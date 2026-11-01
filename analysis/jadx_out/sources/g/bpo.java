package g;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class bpo extends emd {

    /* renamed from: a, reason: collision with root package name */
    public static final dba f11966a = dsr.k(bpo.class);

    /* renamed from: b, reason: collision with root package name */
    public final bvi f11967b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f11968c;

    public bpo(bvi bviVar, HashMap hashMap) {
        this.f11967b = bviVar;
        this.f11968c = hashMap;
    }

    public final String d(int i) {
        int i2;
        if (((-65536) & i) == 0 || (16711680 & i) != 0) {
            i2 = i;
        } else {
            i2 = 65535 & i;
            if (i2 == 0) {
                return null;
            }
        }
        String str = (String) this.f11968c.get(Integer.valueOf(i2));
        if (str != null) {
            return str.replace('/', '.');
        }
        String b2 = dqf.b(i2);
        if (b2 == null) {
            return awf.d(new StringBuilder("?0x"), i);
        }
        return "android:" + b2.replace('/', '.');
    }

    public final String e(int i, int i2) {
        Map map = this.f11968c;
        dba dbaVar = f11966a;
        switch (i) {
            case 0:
                return null;
            case 1:
            case 7:
                String str = (String) map.get(Integer.valueOf(i2));
                if (str != null) {
                    return "@".concat(str);
                }
                String b2 = dqf.b(i2);
                return b2 != null ? "@android:".concat(b2) : i2 == 0 ? "0" : awf.d(new StringBuilder("?unknown_ref: "), i2);
            case 2:
                String str2 = (String) map.get(Integer.valueOf(i2));
                if (str2 != null) {
                    return "?".concat(str2);
                }
                String b3 = dqf.b(i2);
                return b3 != null ? "?android:".concat(b3) : awf.d(new StringBuilder("?unknown_attr_ref: "), i2);
            case 3:
                return this.f11967b.f(i2);
            case 4:
                return eyt.ae(Float.intBitsToFloat(i2));
            case 5:
                return eyt.al(i2, false);
            case 6:
                return eyt.al(i2, true);
            case 8:
                dbaVar.p(Integer.valueOf(i2), "Data type TYPE_DYNAMIC_ATTRIBUTE not yet supported: {}");
                return "  TYPE_DYNAMIC_ATTRIBUTE: " + i2;
            default:
                switch (i) {
                    case 16:
                        return Integer.toString(i2);
                    case 17:
                        return awf.d(new StringBuilder("0x"), i2);
                    case 18:
                        return i2 == 0 ? "false" : "true";
                    default:
                        switch (i) {
                            case 28:
                                return String.format("#%08x", Integer.valueOf(i2));
                            case 29:
                                return String.format("#%06x", Integer.valueOf(16777215 & i2));
                            case 30:
                                return String.format("#%04x", Integer.valueOf(65535 & i2));
                            case 31:
                                return String.format("#%03x", Integer.valueOf(i2 & 4095));
                            default:
                                dbaVar.t(Integer.toHexString(i), "Unknown data type: 0x{} {}", Integer.valueOf(i2));
                                return "  ?0x" + Integer.toHexString(i) + ' ' + i2;
                        }
                }
        }
    }
}
