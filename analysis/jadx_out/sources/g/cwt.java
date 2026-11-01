package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import java.lang.reflect.Constructor;
import java.util.HashMap;

/* loaded from: classes3.dex */
public final class cwt extends dls {

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f13646b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f13647c;

    /* renamed from: d, reason: collision with root package name */
    public final Constructor f13648d;

    /* renamed from: e, reason: collision with root package name */
    public final Object[] f13649e;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(Byte.TYPE, (byte) 0);
        hashMap.put(Short.TYPE, (short) 0);
        hashMap.put(Integer.TYPE, 0);
        hashMap.put(Long.TYPE, 0L);
        hashMap.put(Float.TYPE, Float.valueOf(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT));
        hashMap.put(Double.TYPE, Double.valueOf(0.0d));
        hashMap.put(Character.TYPE, (char) 0);
        hashMap.put(Boolean.TYPE, Boolean.FALSE);
        f13646b = hashMap;
    }

    public cwt(Class cls, st stVar, boolean z) {
        super(stVar);
        this.f13647c = new HashMap();
        eyt eytVar = cpe.f13267a;
        Constructor i = eytVar.i(cls);
        this.f13648d = i;
        if (z) {
            s.f(null, i);
        } else {
            cpe.e(i);
        }
        String[] _bg = eytVar._bg(cls);
        for (int i2 = 0; i2 < _bg.length; i2++) {
            this.f13647c.put(_bg[i2], Integer.valueOf(i2));
        }
        Class<?>[] parameterTypes = this.f13648d.getParameterTypes();
        this.f13649e = new Object[parameterTypes.length];
        for (int i3 = 0; i3 < parameterTypes.length; i3++) {
            this.f13649e[i3] = f13646b.get(parameterTypes[i3]);
        }
    }
}
