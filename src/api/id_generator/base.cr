require "./abstract_base"

module OpenTelemetry
  module API
    struct AbstractIdGenerator
      struct Base < AbstractBase
        def trace_id : Slice(UInt8)
          Slice(UInt8).new(16, 0)
        end

        def span_id : Slice(UInt8)
          Slice(UInt8).new(8, 0)
        end
      end
    end
  end
end
