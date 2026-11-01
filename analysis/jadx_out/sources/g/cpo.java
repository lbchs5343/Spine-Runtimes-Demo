package g;

import android.util.SparseArray;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class cpo implements ValueSet {

    /* renamed from: a, reason: collision with root package name */
    public final SparseArray f13273a;

    /* renamed from: b, reason: collision with root package name */
    public final ValueSet f13274b;

    /* renamed from: c, reason: collision with root package name */
    public int f13275c = -1;

    public cpo(SparseArray sparseArray, ValueSet valueSet) {
        this.f13273a = sparseArray;
        this.f13274b = valueSet;
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final Object[] arrayValue(int i, Class cls) {
        Object obj = this.f13273a.get(i);
        if (obj == null) {
            ValueSet valueSet = this.f13274b;
            if (valueSet != null) {
                return valueSet.arrayValue(i, cls);
            }
            return null;
        }
        Class<?> cls2 = obj.getClass();
        if (cls2.isArray() && cls.isAssignableFrom(cls2.getComponentType())) {
            return (Object[]) obj;
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final boolean booleanValue(int i) {
        return booleanValue(i, false);
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final boolean booleanValue(int i, boolean z) {
        ValueSet valueSet;
        Object obj = this.f13273a.get(i);
        if (obj == null && (valueSet = this.f13274b) != null) {
            return valueSet.booleanValue(i, z);
        }
        if (obj instanceof ValueSet.ValueGetter) {
            obj = ((ValueSet.ValueGetter) obj).get();
        }
        return obj instanceof Boolean ? ((Boolean) obj).booleanValue() : z;
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final boolean containsKey(int i) {
        ValueSet valueSet;
        int indexOfKey = this.f13273a.indexOfKey(i);
        return (indexOfKey >= 0 || (valueSet = this.f13274b) == null) ? indexOfKey >= 0 : valueSet.containsKey(i);
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final double doubleValue(int i) {
        ValueSet valueSet;
        Object obj = this.f13273a.get(i);
        if (obj == null && (valueSet = this.f13274b) != null) {
            return valueSet.doubleValue(i);
        }
        if (obj instanceof ValueSet.ValueGetter) {
            obj = ((ValueSet.ValueGetter) obj).get();
        }
        if (obj instanceof Double) {
            return ((Double) obj).doubleValue();
        }
        return 0.0d;
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final float floatValue(int i) {
        return floatValue(i, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final float floatValue(int i, float f2) {
        ValueSet valueSet;
        Object obj = this.f13273a.get(i);
        if (obj == null && (valueSet = this.f13274b) != null) {
            return valueSet.floatValue(i, f2);
        }
        if (obj instanceof ValueSet.ValueGetter) {
            obj = ((ValueSet.ValueGetter) obj).get();
        }
        return obj instanceof Float ? ((Float) obj).floatValue() : f2;
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final int intValue(int i) {
        return intValue(i, 0);
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final int intValue(int i, int i2) {
        ValueSet valueSet;
        Object obj = this.f13273a.get(i);
        if (obj == null && (valueSet = this.f13274b) != null) {
            return valueSet.intValue(i, i2);
        }
        if (obj instanceof ValueSet.ValueGetter) {
            obj = ((ValueSet.ValueGetter) obj).get();
        }
        return obj instanceof Integer ? ((Integer) obj).intValue() : i2;
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final boolean isEmpty() {
        return size() <= 0;
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final Set keys() {
        SparseArray sparseArray = this.f13273a;
        int size = sparseArray.size();
        HashSet hashSet = new HashSet();
        for (int i = 0; i < size; i++) {
            hashSet.add(Integer.valueOf(sparseArray.keyAt(i)));
        }
        ValueSet valueSet = this.f13274b;
        if (valueSet != null) {
            hashSet.addAll(valueSet.keys());
        }
        this.f13275c = hashSet.size();
        return hashSet;
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final long longValue(int i) {
        return longValue(i, 0L);
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final long longValue(int i, long j) {
        ValueSet valueSet;
        Object obj = this.f13273a.get(i);
        if (obj == null && (valueSet = this.f13274b) != null) {
            return valueSet.longValue(i, j);
        }
        if (obj instanceof ValueSet.ValueGetter) {
            obj = ((ValueSet.ValueGetter) obj).get();
        }
        return obj instanceof Long ? ((Long) obj).longValue() : j;
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final Object objectValue(int i, Class cls) {
        Object obj = this.f13273a.get(i);
        if (obj == null) {
            ValueSet valueSet = this.f13274b;
            if (valueSet != null) {
                return valueSet.objectValue(i, cls);
            }
            return null;
        }
        if (obj instanceof ValueSet.ValueGetter) {
            obj = ((ValueSet.ValueGetter) obj).get();
        }
        if (cls.isInstance(obj)) {
            return obj;
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final int size() {
        if (this.f13275c < 0) {
            keys();
        }
        return this.f13275c;
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final String stringValue(int i) {
        return stringValue(i, null);
    }

    @Override // com.bykv.vk.openvk.api.proto.ValueSet
    public final String stringValue(int i, String str) {
        ValueSet valueSet;
        Object obj = this.f13273a.get(i);
        if (obj != null || (valueSet = this.f13274b) == null) {
            return (obj instanceof ValueSet.ValueGetter ? ((ValueSet.ValueGetter) obj).get() : obj) instanceof String ? obj.toString() : str;
        }
        return valueSet.stringValue(i, str);
    }
}
