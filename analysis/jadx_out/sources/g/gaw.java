package g;

import com.bykv.vk.openvk.api.proto.Bridge;
import com.bykv.vk.openvk.api.proto.ValueSet;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes.dex */
public final class gaw implements Bridge {
    @Override // com.bykv.vk.openvk.api.proto.Caller
    public <T> T call(int i, ValueSet valueSet, Class<T> cls) {
        if (cls == Boolean.class) {
            return (T) Boolean.FALSE;
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            return (T) 0;
        }
        if (cls == Long.TYPE || cls == Long.class) {
            return (T) 0L;
        }
        if (cls == Double.TYPE || cls == Double.class) {
            return (T) Double.valueOf(0.0d);
        }
        if (cls == Float.TYPE || cls == Float.class) {
            return (T) Float.valueOf(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        return null;
    }

    @Override // com.bykv.vk.openvk.api.proto.Bridge
    public final ValueSet values() {
        return hat.f19147b;
    }
}
