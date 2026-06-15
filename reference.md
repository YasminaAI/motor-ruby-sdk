# Reference
## Quotes
<details><summary><code>client.quotes.<a href="/lib/yasminaai/quotes/client.rb">show_quote</a>(id) -> Yasminaai::Types::QuoteResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.quotes.show_quote(id: 1)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Yasminaai::Quotes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.quotes.<a href="/lib/yasminaai/quotes/client.rb">delete_quote</a>(id) -> Yasminaai::Quotes::Types::DeleteQuoteRequestsIDResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.quotes.delete_quote(id: 1)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**id:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Yasminaai::Quotes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.quotes.<a href="/lib/yasminaai/quotes/client.rb">list_quotes</a>() -> Yasminaai::Quotes::Types::GetQuoteRequestsResponse</code></summary>
<dl>
<dd>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.quotes.list_quotes
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**request_options:** `Yasminaai::Quotes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.quotes.<a href="/lib/yasminaai/quotes/client.rb">request_quotes</a>(request) -> Yasminaai::Types::QuoteResponse</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

For getting prices with benefits. 
The Quote IDs can be used later to issue a policy
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.quotes.request_quotes(
  owner_id: "owner_id",
  phone: "phone",
  birthdate: "2023-01-15",
  car_sequence_number: "car_sequence_number",
  car_estimated_cost: 1.1
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**owner_id:** `String` — Owner ID must be 10 digits starting with 1, 2, or 7
    
</dd>
</dl>

<dl>
<dd>

**email:** `String` — Email address must be valid and belongs to the customer
    
</dd>
</dl>

<dl>
<dd>

**phone:** `String` — Phone number must start with 05 and be 10 digits
    
</dd>
</dl>

<dl>
<dd>

**birthdate:** `String` — Birthdate in YYYY-MM-DD format
    
</dd>
</dl>

<dl>
<dd>

**car_sequence_number:** `String` — Car sequence number must be 8 or 9 digits
    
</dd>
</dl>

<dl>
<dd>

**is_ownership_transfer:** `Internal::Types::Boolean` — Indicates if the ownership is being transferred
    
</dd>
</dl>

<dl>
<dd>

**current_car_owner_id:** `String` — Required if is_ownership_transfer is true; 10 digits starting with 1,2,7
    
</dd>
</dl>

<dl>
<dd>

**car_estimated_cost:** `Integer` — Estimated cost of the car
    
</dd>
</dl>

<dl>
<dd>

**car_model_year:** `Integer` — Car model year between 1950 and next year
    
</dd>
</dl>

<dl>
<dd>

**start_date:** `String` — Desired policy start date in YYYY-MM-DD. Must be between tomorrow and 28 days from today (inclusive). The platform validates this range server-side.
    
</dd>
</dl>

<dl>
<dd>

**drivers:** `Internal::Types::Array[Yasminaai::Quotes::Types::PostQuoteRequestsRequestDriversItem]` — List of drivers for the vehicle. When provided, the sum of all driving_percentage values must equal 100, and the owner must be included among the drivers.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Yasminaai::Quotes::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## Policies
<details><summary><code>client.policies.<a href="/lib/yasminaai/policies/client.rb">show_policy</a>(car_policy) -> Yasminaai::Types::Policy</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Show a specific policy
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.policies.show_policy(car_policy: 1)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**car_policy:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Yasminaai::Policies::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.policies.<a href="/lib/yasminaai/policies/client.rb">list_policies</a>() -> Internal::Types::Array[Yasminaai::Types::Policy]</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

Listing requested policies
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.policies.list_policies
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**quote_request_id:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**quote_price_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**provider_policy_id:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**car_sequence_number:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**new_owner_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**previous_owner_id:** `String` 
    
</dd>
</dl>

<dl>
<dd>

**status:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**min_price:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**max_price:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**per_page:** `Integer` 
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Yasminaai::Policies::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.policies.<a href="/lib/yasminaai/policies/client.rb">issue_policy</a>(request) -> Yasminaai::Types::Policy</code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

For issuing a new policy
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.policies.issue_policy(
  quote_request_id: 123,
  quote_reference_id: "550e8400-e29b-41d4-a716-446655440000",
  quote_price_id: "550e8400-e29b-41d4-a716-446655440001"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**quote_request_id:** `Integer` — ID of the car quote request
    
</dd>
</dl>

<dl>
<dd>

**quote_reference_id:** `String` — Unique identifier for the quote reference ID (coming from POST /quote-requests)
    
</dd>
</dl>

<dl>
<dd>

**quote_price_id:** `String` — Unique identifier for the quote price ID that exists inside a quote item (coming from POST /quote-requests)
    
</dd>
</dl>

<dl>
<dd>

**benefits:** `Internal::Types::Array[String]` — List of benefit UUIDs
    
</dd>
</dl>

<dl>
<dd>

**extra_fields:** `Internal::Types::Hash[String, Object]` — Optional free-form object with additional fields. Total JSON-encoded size must not exceed 255 characters.
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Yasminaai::Policies::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

## OtPs
<details><summary><code>client.ot_ps.<a href="/lib/yasminaai/ot_ps/client.rb">request_otp_for_quote_verification</a>(request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This endpoint sends a one-time password (OTP) to the provided email and phone number for quote verification. It should be called before creating a quote request.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ot_ps.request_otp_for_quote_verification(
  email: "someone@example.com",
  phone: "0501234567",
  owner_id: "1012345678"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**email:** `String` — Email address of the car owner
    
</dd>
</dl>

<dl>
<dd>

**phone:** `String` — Phone number starting with 05 and containing 10 digits
    
</dd>
</dl>

<dl>
<dd>

**owner_id:** `String` — National ID or Iqama ID of the car owner (10 digits)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Yasminaai::OtPs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

<details><summary><code>client.ot_ps.<a href="/lib/yasminaai/ot_ps/client.rb">request_otp_for_issuing_policy</a>(request) -> </code></summary>
<dl>
<dd>

#### 📝 Description

<dl>
<dd>

<dl>
<dd>

This endpoint sends a one-time password (OTP). It should be called before issuing a policy.
</dd>
</dl>
</dd>
</dl>

#### 🔌 Usage

<dl>
<dd>

<dl>
<dd>

```ruby
client.ot_ps.request_otp_for_issuing_policy(
  email: "someone@example.com",
  phone: "0501234567",
  owner_id: "1012345678",
  quote_request_id: 123,
  quote_reference_id: "550e8400-e29b-41d4-a716-446655440000",
  quote_price_id: "550e8400-e29b-41d4-a716-446655440001"
)
```
</dd>
</dl>
</dd>
</dl>

#### ⚙️ Parameters

<dl>
<dd>

<dl>
<dd>

**email:** `String` — Email address of the car owner
    
</dd>
</dl>

<dl>
<dd>

**phone:** `String` — Phone number starting with 05 and containing 10 digits
    
</dd>
</dl>

<dl>
<dd>

**owner_id:** `String` — National ID or Iqama ID of the car owner (10 digits)
    
</dd>
</dl>

<dl>
<dd>

**quote_request_id:** `Integer` — ID of the car quote request
    
</dd>
</dl>

<dl>
<dd>

**quote_reference_id:** `String` — Unique identifier for the quote reference ID (coming from POST /quote-requests)
    
</dd>
</dl>

<dl>
<dd>

**quote_price_id:** `String` — Unique identifier for the quote price ID that exists inside a quote item (coming from POST /quote-requests)
    
</dd>
</dl>

<dl>
<dd>

**request_options:** `Yasminaai::OtPs::RequestOptions` 
    
</dd>
</dl>
</dd>
</dl>


</dd>
</dl>
</details>

