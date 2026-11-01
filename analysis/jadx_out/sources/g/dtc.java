package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.ByteArrayOutputStream;
import java.io.OutputStream;
import java.lang.annotation.Annotation;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public final class dtc implements dmp {

    /* renamed from: a, reason: collision with root package name */
    public static final cec f14754a;

    /* renamed from: b, reason: collision with root package name */
    public static final Charset f14755b = Charset.forName("UTF-8");

    /* renamed from: c, reason: collision with root package name */
    public static final ehz f14756c;

    /* renamed from: d, reason: collision with root package name */
    public static final cec f14757d;

    /* renamed from: e, reason: collision with root package name */
    public final xx f14758e;

    /* renamed from: f, reason: collision with root package name */
    public final fyv f14759f = new fyv(this);

    /* renamed from: g, reason: collision with root package name */
    public OutputStream f14760g;
    public final HashMap h;
    public final HashMap j;

    static {
        gqc ad = gqc.ad();
        ad.f18566ab = 1;
        bnd bg = ad.bg();
        HashMap hashMap = new HashMap();
        hashMap.put(bkv.class, bg);
        f14757d = new cec("key", Collections.unmodifiableMap(new HashMap(hashMap)));
        gqc ad2 = gqc.ad();
        ad2.f18566ab = 2;
        bnd bg2 = ad2.bg();
        HashMap hashMap2 = new HashMap();
        hashMap2.put(bkv.class, bg2);
        f14754a = new cec("value", Collections.unmodifiableMap(new HashMap(hashMap2)));
        f14756c = new ehz(1);
    }

    public dtc(ByteArrayOutputStream byteArrayOutputStream, HashMap hashMap, HashMap hashMap2, xx xxVar) {
        this.f14760g = byteArrayOutputStream;
        this.h = hashMap;
        this.j = hashMap2;
        this.f14758e = xxVar;
    }

    public static int k(cec cecVar) {
        bkv bkvVar = (bkv) ((Annotation) cecVar.f12728b.get(bkv.class));
        if (bkvVar != null) {
            return ((bnd) bkvVar).f11863a;
        }
        throw new fgn("Field has no @Protobuf config");
    }

    @Override // g.dmp
    public final dmp i(cec cecVar, Object obj) {
        n(cecVar, obj, true);
        return this;
    }

    @Override // g.dmp
    public final dmp l(cec cecVar, long j) {
        r(cecVar, j, true);
        return this;
    }

    public final void m(int i) {
        while ((i & (-128)) != 0) {
            this.f14760g.write((i & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            i >>>= 7;
        }
        this.f14760g.write(i & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE);
    }

    public final void n(cec cecVar, Object obj, boolean z) {
        if (obj == null) {
            return;
        }
        if (obj instanceof CharSequence) {
            CharSequence charSequence = (CharSequence) obj;
            if (z && charSequence.length() == 0) {
                return;
            }
            m((k(cecVar) << 3) | 2);
            byte[] bytes = charSequence.toString().getBytes(f14755b);
            m(bytes.length);
            this.f14760g.write(bytes);
            return;
        }
        if (obj instanceof Collection) {
            Iterator it = ((Collection) obj).iterator();
            while (it.hasNext()) {
                n(cecVar, it.next(), false);
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                p(f14756c, cecVar, (Map.Entry) it2.next(), false);
            }
            return;
        }
        if (obj instanceof Double) {
            double doubleValue = ((Double) obj).doubleValue();
            if (z && doubleValue == 0.0d) {
                return;
            }
            m((k(cecVar) << 3) | 1);
            this.f14760g.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putDouble(doubleValue).array());
            return;
        }
        if (obj instanceof Float) {
            float floatValue = ((Float) obj).floatValue();
            if (z && floatValue == TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT) {
                return;
            }
            m((k(cecVar) << 3) | 5);
            this.f14760g.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putFloat(floatValue).array());
            return;
        }
        if (obj instanceof Number) {
            r(cecVar, ((Number) obj).longValue(), z);
            return;
        }
        if (obj instanceof Boolean) {
            o(cecVar, ((Boolean) obj).booleanValue() ? 1 : 0, z);
            return;
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            if (z && bArr.length == 0) {
                return;
            }
            m((k(cecVar) << 3) | 2);
            m(bArr.length);
            this.f14760g.write(bArr);
            return;
        }
        xx xxVar = (xx) this.h.get(obj.getClass());
        if (xxVar != null) {
            p(xxVar, cecVar, obj, z);
            return;
        }
        ya yaVar = (ya) this.j.get(obj.getClass());
        if (yaVar != null) {
            fyv fyvVar = this.f14759f;
            fyvVar.f17673d = false;
            fyvVar.f17675f = cecVar;
            fyvVar.f17674e = z;
            yaVar.b(obj, fyvVar);
            return;
        }
        if (obj instanceof gwo) {
            o(cecVar, ((gwo) obj).b(), true);
        } else if (obj instanceof Enum) {
            o(cecVar, ((Enum) obj).ordinal(), true);
        } else {
            p(this.f14758e, cecVar, obj, z);
        }
    }

    public final void o(cec cecVar, int i, boolean z) {
        if (z && i == 0) {
            return;
        }
        bkv bkvVar = (bkv) ((Annotation) cecVar.f12728b.get(bkv.class));
        if (bkvVar == null) {
            throw new fgn("Field has no @Protobuf config");
        }
        int[] iArr = dgc.f14122a;
        bnd bndVar = (bnd) bkvVar;
        int i2 = bndVar.f11863a;
        int i3 = iArr[bndVar.f11864b.ordinal()];
        if (i3 == 1) {
            m(i2 << 3);
            m(i);
        } else if (i3 == 2) {
            m(i2 << 3);
            m((i << 1) ^ (i >> 31));
        } else {
            if (i3 != 3) {
                return;
            }
            m((i2 << 3) | 5);
            this.f14760g.write(ByteBuffer.allocate(4).order(ByteOrder.LITTLE_ENDIAN).putInt(i).array());
        }
    }

    public final void p(xx xxVar, cec cecVar, Object obj, boolean z) {
        fch fchVar = new fch();
        fchVar.f16558a = 0L;
        try {
            OutputStream outputStream = this.f14760g;
            this.f14760g = fchVar;
            try {
                xxVar.b(obj, this);
                this.f14760g = outputStream;
                long j = fchVar.f16558a;
                fchVar.close();
                if (z && j == 0) {
                    return;
                }
                m((k(cecVar) << 3) | 2);
                q(j);
                xxVar.b(obj, this);
            } catch (Throwable th) {
                this.f14760g = outputStream;
                throw th;
            }
        } catch (Throwable th2) {
            try {
                fchVar.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    public final void q(long j) {
        while (((-128) & j) != 0) {
            this.f14760g.write((((int) j) & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE) | TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
            j >>>= 7;
        }
        this.f14760g.write(((int) j) & TTDownloadField.CALL_DOWNLOAD_MODEL_SET_EXTRA_VALUE);
    }

    public final void r(cec cecVar, long j, boolean z) {
        if (z && j == 0) {
            return;
        }
        bkv bkvVar = (bkv) ((Annotation) cecVar.f12728b.get(bkv.class));
        if (bkvVar == null) {
            throw new fgn("Field has no @Protobuf config");
        }
        int[] iArr = dgc.f14122a;
        bnd bndVar = (bnd) bkvVar;
        int i = bndVar.f11863a;
        int i2 = iArr[bndVar.f11864b.ordinal()];
        if (i2 == 1) {
            m(i << 3);
            q(j);
        } else if (i2 == 2) {
            m(i << 3);
            q((j >> 63) ^ (j << 1));
        } else {
            if (i2 != 3) {
                return;
            }
            m((i << 3) | 1);
            this.f14760g.write(ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(j).array());
        }
    }
}
