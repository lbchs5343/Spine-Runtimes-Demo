package com.bytedance.sdk.openadsdk.mediation.bridge;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public class MediationValueSetBuilder {
    private final SparseArray<Object> dq;

    public interface BooleanGetter extends ValueSet.ValueGetter<Boolean> {
    }

    public interface DoubleGetter extends ValueSet.ValueGetter<Double> {
    }

    public interface FloatGetter extends ValueSet.ValueGetter<Float> {
    }

    public interface IntGetter extends ValueSet.ValueGetter<Integer> {
    }

    public interface LongGetter extends ValueSet.ValueGetter<Long> {
    }

    public interface ObjectGetter extends ValueSet.ValueGetter<Object> {
    }

    public interface StringGetter extends ValueSet.ValueGetter<String> {
    }

    public static final class ValueSetImpl implements ValueSet {
        private final SparseArray<Object> dq;

        private ValueSetImpl(SparseArray<Object> sparseArray) {
            this.dq = sparseArray;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public <T> T[] arrayValue(int i, Class<T> cls) {
            Object obj = this.dq.get(i);
            if (obj == null) {
                return null;
            }
            Class<?> cls2 = obj.getClass();
            if (cls2.isArray() && cls.isAssignableFrom(cls2.getComponentType())) {
                return (T[]) ((Object[]) obj);
            }
            return null;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public boolean booleanValue(int i) {
            return booleanValue(i, false);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public boolean booleanValue(int i, boolean z) {
            Object obj = this.dq.get(i);
            if (obj instanceof ValueSet.ValueGetter) {
                obj = ((ValueSet.ValueGetter) obj).get();
            }
            return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : z;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public boolean containsKey(int i) {
            return this.dq.indexOfKey(i) >= 0;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public double doubleValue(int i) {
            Object obj = this.dq.get(i);
            if (obj instanceof ValueSet.ValueGetter) {
                obj = ((ValueSet.ValueGetter) obj).get();
            }
            if (obj instanceof Double) {
                return ((Double) obj).doubleValue();
            }
            return 0.0d;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public float floatValue(int i) {
            return floatValue(i, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public float floatValue(int i, float f2) {
            Object obj = this.dq.get(i);
            if (obj instanceof ValueSet.ValueGetter) {
                obj = ((ValueSet.ValueGetter) obj).get();
            }
            return obj instanceof Float ? ((Float) obj).floatValue() : f2;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public int intValue(int i) {
            return intValue(i, 0);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public int intValue(int i, int i2) {
            Object obj = this.dq.get(i);
            if (obj instanceof ValueSet.ValueGetter) {
                obj = ((ValueSet.ValueGetter) obj).get();
            }
            return obj instanceof Integer ? ((Integer) obj).intValue() : i2;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public boolean isEmpty() {
            return size() <= 0;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public Set<Integer> keys() {
            int size = this.dq.size();
            HashSet hashSet = new HashSet();
            for (int i = 0; i < size; i++) {
                hashSet.add(Integer.valueOf(i));
            }
            return hashSet;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public long longValue(int i) {
            return longValue(i, 0L);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public long longValue(int i, long j) {
            Object obj = this.dq.get(i);
            if (obj instanceof ValueSet.ValueGetter) {
                obj = ((ValueSet.ValueGetter) obj).get();
            }
            return obj instanceof Long ? ((Long) obj).longValue() : j;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public <T> T objectValue(int i, Class<T> cls) {
            Object obj = this.dq.get(i);
            if (obj instanceof ValueSet.ValueGetter) {
                obj = ((ValueSet.ValueGetter) obj).get();
            }
            if (cls.isInstance(obj)) {
                return (T) this.dq.get(i);
            }
            return null;
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public int size() {
            SparseArray<Object> sparseArray = this.dq;
            if (sparseArray == null) {
                return 0;
            }
            return sparseArray.size();
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public String stringValue(int i) {
            return stringValue(i, null);
        }

        @Override // com.bykv.vk.openvk.api.proto.ValueSet
        public String stringValue(int i, String str) {
            Object obj = this.dq.get(i);
            return (obj instanceof ValueSet.ValueGetter ? ((ValueSet.ValueGetter) obj).get() : obj) instanceof String ? obj.toString() : str;
        }
    }

    private MediationValueSetBuilder(SparseArray<Object> sparseArray) {
        this.dq = sparseArray;
    }

    public static final MediationValueSetBuilder create() {
        return new MediationValueSetBuilder(new SparseArray());
    }

    public static final MediationValueSetBuilder create(ValueSet valueSet) {
        if (valueSet == null || valueSet.isEmpty()) {
            return new MediationValueSetBuilder(new SparseArray());
        }
        SparseArray sparseArray = new SparseArray();
        for (Integer num : valueSet.keys()) {
            sparseArray.put(num.intValue(), valueSet.objectValue(num.intValue(), Object.class));
        }
        return new MediationValueSetBuilder(sparseArray);
    }

    public MediationValueSetBuilder add(int i, double d2) {
        this.dq.put(i, Double.valueOf(d2));
        return this;
    }

    public MediationValueSetBuilder add(int i, float f2) {
        this.dq.put(i, Float.valueOf(f2));
        return this;
    }

    public MediationValueSetBuilder add(int i, int i2) {
        this.dq.put(i, Integer.valueOf(i2));
        return this;
    }

    public MediationValueSetBuilder add(int i, long j) {
        this.dq.put(i, Long.valueOf(j));
        return this;
    }

    public MediationValueSetBuilder add(int i, BooleanGetter booleanGetter) {
        this.dq.put(i, booleanGetter);
        return this;
    }

    public MediationValueSetBuilder add(int i, DoubleGetter doubleGetter) {
        this.dq.put(i, doubleGetter);
        return this;
    }

    public MediationValueSetBuilder add(int i, FloatGetter floatGetter) {
        this.dq.put(i, floatGetter);
        return this;
    }

    public MediationValueSetBuilder add(int i, IntGetter intGetter) {
        this.dq.put(i, intGetter);
        return this;
    }

    public MediationValueSetBuilder add(int i, LongGetter longGetter) {
        this.dq.put(i, longGetter);
        return this;
    }

    public MediationValueSetBuilder add(int i, ObjectGetter objectGetter) {
        this.dq.put(i, objectGetter);
        return this;
    }

    public MediationValueSetBuilder add(int i, StringGetter stringGetter) {
        this.dq.put(i, stringGetter);
        return this;
    }

    public MediationValueSetBuilder add(int i, Object obj) {
        this.dq.put(i, obj);
        return this;
    }

    public MediationValueSetBuilder add(int i, String str) {
        this.dq.put(i, str);
        return this;
    }

    public MediationValueSetBuilder add(int i, boolean z) {
        this.dq.put(i, Boolean.valueOf(z));
        return this;
    }

    public <T> MediationValueSetBuilder addArray(int i, T[] tArr) {
        this.dq.put(i, tArr);
        return this;
    }

    public ValueSet build() {
        return new ValueSetImpl(this.dq);
    }
}
