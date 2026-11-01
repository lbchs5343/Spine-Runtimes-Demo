package g;

import android.os.Bundle;
import java.util.EnumMap;

/* loaded from: classes3.dex */
public final class rs {

    /* renamed from: a, reason: collision with root package name */
    public static final rs f19921a = new rs(null, null);

    /* renamed from: b, reason: collision with root package name */
    public final EnumMap f19922b;

    public rs(Boolean bool, Boolean bool2) {
        EnumMap enumMap = new EnumMap(gxx.class);
        this.f19922b = enumMap;
        enumMap.put((EnumMap) gxx.AD_STORAGE, (gxx) bool);
        enumMap.put((EnumMap) gxx.ANALYTICS_STORAGE, (gxx) bool2);
    }

    public rs(EnumMap enumMap) {
        EnumMap enumMap2 = new EnumMap(gxx.class);
        this.f19922b = enumMap2;
        enumMap2.putAll(enumMap);
    }

    public static rs c(Bundle bundle) {
        if (bundle == null) {
            return f19921a;
        }
        EnumMap enumMap = new EnumMap(gxx.class);
        for (gxx gxxVar : gxx.values()) {
            String string = bundle.getString(gxxVar.zzd);
            Boolean bool = null;
            if (string != null) {
                if (string.equals("granted")) {
                    bool = Boolean.TRUE;
                } else if (string.equals("denied")) {
                    bool = Boolean.FALSE;
                }
            }
            enumMap.put((EnumMap) gxxVar, (gxx) bool);
        }
        return new rs(enumMap);
    }

    public static rs d(String str) {
        EnumMap enumMap = new EnumMap(gxx.class);
        if (str != null) {
            int i = 0;
            while (true) {
                gxx[] gxxVarArr = gxx.zzc;
                int length = gxxVarArr.length;
                if (i >= 2) {
                    break;
                }
                gxx gxxVar = gxxVarArr[i];
                int i2 = i + 2;
                if (i2 < str.length()) {
                    char charAt = str.charAt(i2);
                    Boolean bool = null;
                    if (charAt != '-') {
                        if (charAt == '0') {
                            bool = Boolean.FALSE;
                        } else if (charAt == '1') {
                            bool = Boolean.TRUE;
                        }
                    }
                    enumMap.put((EnumMap) gxxVar, (gxx) bool);
                }
                i++;
            }
        }
        return new rs(enumMap);
    }

    public final rs e(rs rsVar) {
        EnumMap enumMap = new EnumMap(gxx.class);
        for (gxx gxxVar : gxx.values()) {
            Boolean bool = (Boolean) this.f19922b.get(gxxVar);
            if (bool == null) {
                bool = (Boolean) rsVar.f19922b.get(gxxVar);
            }
            enumMap.put((EnumMap) gxxVar, (gxx) bool);
        }
        return new rs(enumMap);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof rs) {
            rs rsVar = (rs) obj;
            gxx[] values = gxx.values();
            int length = values.length;
            int i = 0;
            while (true) {
                char c2 = 1;
                if (i >= length) {
                    return true;
                }
                gxx gxxVar = values[i];
                Boolean bool = (Boolean) this.f19922b.get(gxxVar);
                char c3 = bool == null ? (char) 0 : bool.booleanValue() ? (char) 1 : (char) 2;
                Boolean bool2 = (Boolean) rsVar.f19922b.get(gxxVar);
                if (bool2 == null) {
                    c2 = 0;
                } else if (!bool2.booleanValue()) {
                    c2 = 2;
                }
                if (c3 != c2) {
                    break;
                }
                i++;
            }
        }
        return false;
    }

    public final String f() {
        StringBuilder sb = new StringBuilder("G1");
        gxx[] gxxVarArr = gxx.zzc;
        int length = gxxVarArr.length;
        for (int i = 0; i < 2; i++) {
            Boolean bool = (Boolean) this.f19922b.get(gxxVarArr[i]);
            sb.append(bool == null ? '-' : bool.booleanValue() ? '1' : '0');
        }
        return sb.toString();
    }

    public final boolean g(gxx gxxVar) {
        Boolean bool = (Boolean) this.f19922b.get(gxxVar);
        return bool == null || bool.booleanValue();
    }

    public final rs h(rs rsVar) {
        EnumMap enumMap = new EnumMap(gxx.class);
        for (gxx gxxVar : gxx.values()) {
            Boolean bool = (Boolean) this.f19922b.get(gxxVar);
            Boolean bool2 = (Boolean) rsVar.f19922b.get(gxxVar);
            if (bool == null) {
                bool = bool2;
            } else if (bool2 != null) {
                bool = Boolean.valueOf(bool.booleanValue() && bool2.booleanValue());
            }
            enumMap.put((EnumMap) gxxVar, (gxx) bool);
        }
        return new rs(enumMap);
    }

    public final int hashCode() {
        int i = 17;
        for (Boolean bool : this.f19922b.values()) {
            int i2 = i * 31;
            i = i2 + (bool == null ? 0 : bool.booleanValue() ? 1 : 2);
        }
        return i;
    }

    public final boolean i(rs rsVar, gxx... gxxVarArr) {
        for (gxx gxxVar : gxxVarArr) {
            Boolean bool = (Boolean) this.f19922b.get(gxxVar);
            Boolean bool2 = (Boolean) rsVar.f19922b.get(gxxVar);
            Boolean bool3 = Boolean.FALSE;
            if (bool == bool3 && bool2 != bool3) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("settings: ");
        gxx[] values = gxx.values();
        int length = values.length;
        for (int i = 0; i < length; i++) {
            gxx gxxVar = values[i];
            if (i != 0) {
                sb.append(", ");
            }
            sb.append(gxxVar.name());
            sb.append("=");
            Boolean bool = (Boolean) this.f19922b.get(gxxVar);
            if (bool == null) {
                sb.append("uninitialized");
            } else {
                sb.append(true != bool.booleanValue() ? "denied" : "granted");
            }
        }
        return sb.toString();
    }
}
