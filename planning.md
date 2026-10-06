# Planning

## General Objectives

- Use the iPhone's LIDAR scanner or camera to map out interior spaces
- Run AI analysis on the scans to spot wall damage, cracks, and other issues
- Look up local property data to get a sense of reasonable repair costs/quotas
- Handle the logistics of hiring builders — reach out, compare quotes, organize schedules
- Take a small cut (around 5%) from whatever the user ends up paying for the repairs
- Email the user summaries and help coordinate with contractors

## Detailed Objectives

### LIDAR/camera scanning

- Camera access and configuration
  - Access device camera via AVFoundation framework
    - Configure AVCaptureSession with appropriate preset (.hd1920x1080)
    - Set up video data output with 30fps frame rate
    - Implement delegate methods for sample buffer processing
  - Handle camera permissions request and user approval flow
  - Check for LIDAR availability using ARKit session
    - Fall back to camera-only mode on non-Pro iPhones
- Live preview and UI
  - Display live camera feed in preview layer within Xcode storyboard
  - Add overlay UI for indicating scan area boundaries
  - Implement pinch-to-zoom gesture for detailed wall inspection
  - Add progress indicator for scan completion percentage
  - Support both portrait and landscape scan orientations
- Image capture and storage
  - Capture high-resolution still image on user tap
  - Save captured image to Photos library with PHAssetCollection
  - Save captured image to app documents directory for offline use
  - Implement undo last capture functionality
- Data handling
  - Encode scan data as JSON with timestamp, location, device model
  - Implement memory management to release pixel buffers after processing
  - Optimize frame rate on older iPhone models (iPhone 8, SE)
  - Add share button to export scan data via AirDrop or email

### Damage identification

- Training data preparation
  - Curate training dataset of 500+ annotated wall crack images
    - Label damage types: fine cracks, wide cracks, holes, water stains, peeling paint
    - Implement data augmentation for training variability
  - Evaluate model bias across different lighting conditions
- Model training
  - Use OpenCV to preprocess images
    - Grayscale conversion
    - Gaussian blur
    - Canny edge detection
  - Extract features using HOG (Histogram of Oriented Gradients)
  - Train a Core ML model using Create ML framework
    - Test model accuracy on holdout validation set (target: >85% precision)
    - Convert trained model to .mlmodel format for iOS integration
  - Add ability to retrain model with user-contributed labels
- On-device inference
  - Add model download on first launch if user approves
  - Implement image preprocessing pipeline within view controller
  - Run inference on each captured frame at 15fps minimum
- Results display
  - Display bounding boxes around detected damage regions
    - Use different colors for each damage type (red=cracks, blue=water stains, etc.)
    - Show confidence percentage for each detection
  - Allow user to tap on detection to view details panel
  - Provide "confirm detection" or "skip" user action
- Data logging
  - Log all detections with GPS location and timestamp
  - Store detection history in Core Data stack

### Market research

- API research and integration
  - Research available property data APIs (Zillow, Redfin, local MLS APIs)
    - Evaluate API cost vs free tier limitations for hackathon timeline
  - Implement API key management and secure storage in Keychain
  - Create network layer using Alamofire for API requests
- Property search
  - Define property search parameters
    - City, zip code, address
    - Reverse geocoding from user's current location
    - Filter by property type: residential, single-family
    - Filter by property age: built before 1980, 1980-2000, 2000+
    - Filter for number of bedrooms/bathrooms
  - Parse JSON response into Swift structs (Property, Sale, Price)
  - Identify recent renovation permits from city database APIs
- Price estimation
  - Calculate price per square foot for comparable properties
  - Create repair cost database
    - Drywall patch, paint, crack injection, etc.
    - Store local repair cost constants in UserDefaults
  - Implement regional price adjustment factors (urban vs suburban vs rural)
  - Display cost range as "typically $500-$1,200" per repair type
- User interaction
  - Allow user to input custom budget range
  - Save search history for quick re-access
  - Support multiple property comparisons side-by-side
- Performance
  - Implement caching of recent search results
  - Generate summary report PDF with comparable properties list

### Builder hiring

- Contractor profiles
  - Design contractor profile screen with fields
    - Name, license number, specialty
    - Add document upload for builder licenses and insurance certificates
  - Integrate with Apple Contact framework for contact import
  - Create onboarding flow for new builders to register in the app
  - Store builder contacts in Core Data with relationship to projects
- Outreach
  - Implement email composition view using MessageUI framework
  - Create SMS outreach template with placeholders ({property_address}, {repair_type})
  - Add button to send outreach to multiple builders simultaneously
  - Set up push notifications for new quote requests
- Quote management
  - Build quote comparison table view
    - Columns: builder, estimate, timeline, status
    - Implement swipe-to-action for accept/decline/reply per quote
  - Track builder response status: pending, accepted, declined, no response
  - Add phone call functionality using TLPhoneNumberView
- Scheduling and communication
  - Schedule follow-up reminders using UserNotifications framework
  - Implement in-app chat using MessageKit or Firebase
- Discovery
  - Add search and filter for builders by location radius (5mi, 10mi, 25mi)
  - Integrate with MapKit to show builder distances from property
- Performance tracking
  - Implement rating system after job completion (1-5 stars with review text)
  - Generate monthly report of builder performance metrics
  - Add ability to export builder contact list as CSV

### Commission model

- Payment integration
  - Integrate Stripe SDK for payment processing
  - Create payment intent backend endpoint using Node/Express or Firebase Functions
  - Implement secure payment method collection (CardField from Stripe)
  - Save payment method token to Keychain for future use
- Commission calculation
  - Calculate 5% commission on final repair quote amount
  - Display cost breakdown
    - Base repair cost
    - Commission amount (5%)
    - Total
  - Add terms of service and commission disclosure onboarding screen
- Invoicing and receipts
  - Generate PDF invoice with line items and totals
  - Add email receipt generation after each transaction
  - Add Stripe dashboard link for user to view transaction history
- Payouts
  - Track commission payout date and status (pending, paid out)
  - Support payout to builder via Stripe Connect or direct bank transfer
  - Add subscription option for premium builders (monthly flat fee)
- Edge cases
  - Implement refund flow for cancelled repairs
  - Support split payments if user pays portion, insurance covers portion
  - Implement fraud detection for suspicious large transactions
  - Add dispute resolution flow for chargebacks
  - Support multiple currencies with automatic conversion
- Scaling (future)
  - Create admin panel to view all commissions taken

### Email automation

- Template design
  - Create three email template designs using Mailgun drag-and-drop builder
    - Template 1: "Scan Complete - Here's What We Found"
    - Template 2: "Repair Estimates - Get Multiple Quotes"
    - Template 3: "Builder Hired - Next Steps"
  - Write compelling subject lines for each template (A/B test later)
  - Add template editor for advanced users to customize HTML/CSS
- Content generation
  - Implement email content personalization with user name, property address
  - Add dynamic insertion of scan images and damage annotations
  - Generate summary PDF from scan data and attach to email
- Delivery infrastructure
  - Use Mailgun API to send transactional emails from backend
    - Set up SMTP credentials securely in environment variables
  - Implement email send queue for batch operations
  - Implement retry logic for failed email sends
  - Test email deliverability across Gmail, Outlook, Apple Mail
- Tracking and compliance
  - Track email open rates using tracking pixel (optional)
  - Add unsubscribe link footer to all outgoing emails
  - Create A/B testing framework for subject line optimization
  - Track email campaign ROI for builder acquisition costs
- User preferences
  - Add email preference toggle in app settings (weekly summaries vs instant)
  - Support scheduling emails for later send time
  - Integrate with user's default mail app if they prefer to edit before send
- Internationalization
  - Support localization for multiple languages (English, Spanish, French)

## Priorities & Timeline

- Phase 1 MVP: scanning + basic damage detection + market research
  - Prioritize iPhone Pro LIDAR features first, camera-only fallback for non-Pro
- Phase 2: builder hiring integration + commission model
- Phase 3: advanced AI retraining + email automation workflows
- Target hackathon demo: core scanning + damage identification + basic quotes