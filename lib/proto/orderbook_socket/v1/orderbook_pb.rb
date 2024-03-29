# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: proto/orderbook_socket/v1/orderbook.proto

require 'google/protobuf'


descriptor_data = "\n)proto/orderbook_socket/v1/orderbook.proto\x12\x13orderbook_socket.v1\"\xfe\x02\n\tOrderbook\x12\x0c\n\x04pair\x18\x01 \x01(\t\x12\x30\n\x04\x62ids\x18\x02 \x03(\x0b\x32\".orderbook_socket.v1.OrderbookItem\x12\x30\n\x04\x61sks\x18\x03 \x03(\x0b\x32\".orderbook_socket.v1.OrderbookItem\x12\x1f\n\x17twenty_four_hour_volume\x18\x04 \x01(\x01\x12\x1c\n\x14twenty_four_hour_low\x18\x05 \x01(\x01\x12\x1d\n\x15twenty_four_hour_high\x18\x06 \x01(\x01\x12\x1f\n\x17twenty_four_hour_change\x18\x07 \x01(\x01\x12\x18\n\x10last_trade_price\x18\x08 \x01(\x01\x12\x0e\n\x06spread\x18\t \x01(\x01\x12\'\n\x1ftwenty_four_hour_percent_change\x18\n \x01(\x01\x12-\n%twenty_four_hour_price_percent_change\x18\x0b \x01(\x01\"0\n\rOrderbookItem\x12\r\n\x05price\x18\x01 \x01(\x01\x12\x10\n\x08quantity\x18\x02 \x01(\x01\x62\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module OrderbookSocket
  module V1
    Orderbook = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("orderbook_socket.v1.Orderbook").msgclass
    OrderbookItem = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("orderbook_socket.v1.OrderbookItem").msgclass
  end
end
