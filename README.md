# Real-Time SMS Notification System

## Overview

This Ruby on Rails application is designed to send real-time SMS notifications based on specific triggers. The system utilizes the latest features of Rails 7 for efficient backend processing and seamlessly integrates with a third-party SMS API (such as Twilio or ClickSend).

## Requirements

Before setting up the Real-Time SMS Notification System, ensure that your development environment meets the following requirements:

- **Ruby:** Ensure you have Ruby installed. This application is developed with Ruby 3.0.0.
  - You can install Ruby using tools like RVM or rbenv.

- **Ruby on Rails:** The application is built with Rails 7. Make sure you have Rails installed.
  ```bash
  gem install rails -v 7.0.0

## Features

### 1. Trigger-Based Notifications

Set up triggers within the application to initiate SMS notifications. Triggers can be associated with user actions or specific application states. This feature allows for a flexible and customizable notification system.

### 2. SMS API Integration

Integrate a third-party SMS API to enable the real-time sending of notifications. By leveraging established SMS services like Twilio or ClickSend, the application ensures reliable and efficient communication.

### 3. Rails 7 Backend Processing

Take advantage of the latest features in Rails 7 for robust backend processing. This includes improvements and optimizations that enhance the overall performance and responsiveness of the application.

### 4. Front-end Interface (Optional)

Optionally, a minimalistic front-end interface is provided to facilitate the setup and monitoring of triggers and notifications. This interface is designed to be simple and user-friendly, fitting within time constraints.

## Installation

Follow these steps to set up and run the Real-Time SMS Notification System:

1. **Install Dependencies:**
   ```bash
   bundle install

2. **Configure SMS API Credentials:**
   ```bash
   Update the configuration file with the obtained credentials in config/enviornments/development.rb
   config.x.twilio.account_sid = 'your_account_sid'
   config.x.twilio.auth_token = 'your_auth_token'
   config.x.twilio.phone_number = 'your_twilio_phone_number'

3. **Run Migrations:**
   ```bash
   rails db:migrate

4. **Start the Server:**
   ```bash
   rails server

4. **Access the page:**
   ```bash
   http://localhost:3000/signup