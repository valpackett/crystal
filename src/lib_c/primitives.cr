# These new definitions are here because they are required before defining
# all of Number, Int, etc., functionality (for example in GC)

def Int8.new(value)
  value.to_i8
end

def Int16.new(value)
  value.to_i16
end

def Int32.new(value)
  value.to_i32
end

def Int64.new(value)
  value.to_i64
end

def UInt8.new(value)
  value.to_u8
end

def UInt16.new(value)
  value.to_u16
end

def UInt32.new(value)
  value.to_u32
end

def UInt64.new(value)
  value.to_u64
end

def Float32.new(value)
  value.to_f32
end

def Float64.new(value)
  value.to_f64
end
