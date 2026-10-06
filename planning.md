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

- Access device camera via AVFoundation framework
- Check for LIDAR availability using ARKit session
- Fall back to camera-only mode on non-Pro iPhones
- Configure AVCaptureSession with appropriate preset (.hd1920x1080)
- Set up video data output with 30fps frame rate
- Implement delegate methods for sample buffer processing
- Handle camera permissions request and user approval flow
- Display live camera feed in preview layer within Xcode storyboard
- Add overlay UI for indicating scan area boundaries
- Implement pinch-to-zoom gesture for detailed wall inspection
- Capture high-resolution still image on user tap
- Save captured image to Photos library with PHAssetCollection
- Save captured image to app documents directory for offline use
- Encode scan data as JSON with timestamp, location, device model
- Implement memory management to release pixel buffers after processing
- Optimize frame rate on older iPhone models (iPhone 8, SE)
- Add progress indicator for scan completion percentage
- Support both portrait and landscape scan orientations
- Implement undo last capture functionality
- Add share button to export scan data via AirDrop or email

### Damage identification

- Curate training dataset of 500+ annotated wall crack images
- Label damage types: fine cracks, wide cracks, holes, water stains, peeling paint
- Use OpenCV to preprocess images (grayscale, Gaussian blur, Canny edge detection)
- Extract features using HOG (Histogram of Oriented Gradients)
- Train a Core ML model using Create ML framework
- Test model accuracy on holdout validation set (target: >85% precision)
- Convert trained model to .mlmodel format for iOS integration
- Add model download on first launch if user approves
- Implement image preprocessing pipeline within view controller
- Run inference on each captured frame at 15fps minimum
- Display bounding boxes around detected damage regions
- Use different colors for each damage type (red=cracks, blue=water stains, etc.)
- Show confidence percentage for each detection
- Allow user to tap on detection to view details panel
- Provide "confirm detection" or "skip" user action
- Log all detections with GPS location and timestamp
- Store detection history in Core Data stack
- Implement data augmentation for training variability
- Evaluate model bias across different lighting conditions
- Add ability to retrain model with user-contributed labels

### Market research

- Research available property data APIs (Zillow, Redfin, local MLS APIs)
- Evaluate API cost vs free tier limitations for hackathon timeline
- Implement API key management and secure storage in Keychain
- Create network layer using Alamofire for API requests
- Define property search parameters: city, zip code, address
- Implement reverse geocoding from user's current location
- Filter results by property type: residential, single-family
- Parse JSON response into Swift structs (Property, Sale, Price)
- Calculate price per square foot for comparable properties
- Filter by property age: built before 1980, 1980-2000, 2000+
- Identify recent renovation permits from city database APIs
- Create repair cost database: drywall patch, paint, crack injection, etc.
- Store local repair cost constants in UserDefaults
- Implement regional price adjustment factors (urban vs suburban vs rural)
- Display cost range as "typically $500-$1,200" per repair type
- Allow user to input custom budget range
- Save search history for quick re-access
- Add filter for number of bedrooms/bathrooms
- Implement caching of recent search results
- Support multiple property comparisons side-by-side
- Generate summary report PDF with comparable properties list

### Builder hiring

- Design contractor profile screen with fields: name, license number, specialty
- Integrate with Apple Contact framework for contact import
- Implement email composition view using MessageUI framework
- Create SMS outreach template with placeholders ({property_address}, {repair_type})
- Add button to send outreach to multiple builders simultaneously
- Build quote comparison table view with columns: builder, estimate, timeline, status
- Implement swipe-to-action for accept/decline/reply per quote
- Add phone call functionality using TLPhoneNumberView
- Schedule follow-up reminders using UserNotifications framework
- Track builder response status: pending, accepted, declined, no response
- Implement rating system after job completion (1-5 stars with review text)
- Store builder contacts in Core Data with relationship to projects
- Add search and filter for builders by location radius (5mi, 10mi, 25mi)
- Integrate with MapKit to show builder distances from property
- Implement in-app chat using MessageKit or Firebase
- Add document upload for builder licenses and insurance certificates
- Create onboarding flow for new builders to register in the app
- Set up push notifications for new quote requests
- Generate monthly report of builder performance metrics
- Add ability to export builder contact list as CSV

### Commission model

- Integrate Stripe SDK for payment processing
- Create payment intent backend endpoint using Node/Express or Firebase Functions
- Implement secure payment method collection (CardField from Stripe)
- Save payment method token to Keychain for future use
- Calculate 5% commission on final repair quote amount
- Display cost breakdown: base repair cost, commission amount (5%), total
- Generate PDF invoice with line items and totals
- Add Stripe dashboard link for user to view transaction history
- Support multiple currencies with automatic conversion
- Implement refund flow for cancelled repairs
- Add subscription option for premium builders (monthly flat fee)
- Create admin panel to view all commissions taken (future scaling)
- Track commission payout date and status (pending, paid out)
- Add email receipt generation after each transaction
- Support split payments if user pays portion, insurance covers portion
- Implement fraud detection for suspicious large transactions
- Add terms of service and commission disclosure onboarding screen
- Support payout to builder via Stripe Connect or direct bank transfer
- Add dispute resolution flow for chargebacks

### Email automation

- Create three Email template designs using Mailgun drag-and-drop builder
- Template 1: "Scan Complete - Here's What We Found"
- Template 2: "Repair Estimates - Get Multiple Quotes"
- Template 3: "Builder Hired - Next Steps"
- Write compelling subject lines for each template (A/B test later)
- Implement email content personalization with user name, property address
- Add dynamic insertion of scan images and damage annotations
- Generate summary PDF from scan data and attach to email
- Use Mailgun API to send transactional emails from backend
- Set up SMTP credentials securely in environment variables
- Implement email send queue for batch operations
- Track email open rates using tracking pixel (optional)
- Add unsubscribe link footer to all outgoing emails
- Test email deliverability across Gmail, Outlook, Apple Mail
- Implement retry logic for failed email sends
- Add email preference toggle in app settings (weekly summaries vs instant)
- Create A/B testing framework for subject line optimization
- Support scheduling emails for later send time
- Integrate with user's default mail app if they prefer to edit before send
- Add template editor for advanced users to customize HTML/CSS
- Track email campaign ROI for builder acquisition costs
- Support localization for multiple languages (English, Spanish, French)
- Prioritize iPhone Pro LIDAR features first, camera-only fallback for non-Pro
- Phase 1 MVP: scanning + basic damage detection + market research
- Phase 2: builder hiring integration + commission model
- Phase 3: advanced AI retraining + email automation workflows
- Target hackathon demo: core scanning + damage identification + basic quotes