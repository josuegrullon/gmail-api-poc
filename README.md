## to start with it: email + refresh token provided from the 1)
Gmail.User.start_mail("josuegrullon@gmail.com", "1//05VTmMUCGwkQGCgYIARAAGAUSNwF-L9IrRAHEw-M4xZPBxfO9Pk85MT43RzmaLgHT49a4xA5782Bs01Wk7dtg08tkrrSbm_EL7Uw")

then play

## 1) 
https://accounts.google.com/o/oauth2/v2/auth?
 scope=https://mail.google.com&
 access_type=offline&
 include_granted_scopes=true&
 response_type=code&
 state=state_parameter_passthrough_value&
 redirect_uri=http://localhost:4003/oauth&
 client_id=423331183320-k423g7r5ol8n2vtj0d02rnp4k16u8d3p.apps.googleusercontent.com

 Gmail.User.start_mail("josuegrullon@gmail.com", "1//05gct7IlW4A8CCgYIARAAGAUSNwF-L9Irf4Vvty3siMBb5YXask8CzJ4A3unWC_kQxjiStZ-NrAoohRi5L5xlnz1LZSJ36ky5n8o")

refresh: 1//05gct7IlW4A8CCgYIARAAGAUSNwF-L9Irf4Vvty3siMBb5YXask8CzJ4A3unWC_kQxjiStZ-NrAoohRi5L5xlnz1LZSJ36ky5n8o
access: ya29.a0Aa4xrXO7khaOj4Pmnal7z1R0Nq6VPnhZYE_VlvelSOQTO9qSgHOPpdvDTnhnRLCFcUDhcuj5PXzNxRI7pX-vsKR0HpERqqfit4QqXqwv6P2YruzBiOu3FCfElHtx-jMLwHNlEZMTSZobZwJnhcd_ZDedXWKTaCgYKATASARISFQEjDvL94Ck53Wa3Ip93yhqEgMwcJg0163

Client: 423331183320-k423g7r5ol8n2vtj0d02rnp4k16u8d3p.apps.googleusercontent.com
Secret: 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