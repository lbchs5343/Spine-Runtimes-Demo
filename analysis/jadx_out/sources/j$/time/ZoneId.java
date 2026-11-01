package j$.time;

import j$.util.Objects;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;

/* loaded from: classes2.dex */
public abstract class ZoneId implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public static final Map f20446a;
    private static final long serialVersionUID = 8352817235686L;

    static {
        Map.Entry[] entryArr = {j$.com.android.tools.r8.a.L("ACT", "Australia/Darwin"), j$.com.android.tools.r8.a.L("AET", "Australia/Sydney"), j$.com.android.tools.r8.a.L("AGT", "America/Argentina/Buenos_Aires"), j$.com.android.tools.r8.a.L("ART", "Africa/Cairo"), j$.com.android.tools.r8.a.L("AST", "America/Anchorage"), j$.com.android.tools.r8.a.L("BET", "America/Sao_Paulo"), j$.com.android.tools.r8.a.L("BST", "Asia/Dhaka"), j$.com.android.tools.r8.a.L("CAT", "Africa/Harare"), j$.com.android.tools.r8.a.L("CNT", "America/St_Johns"), j$.com.android.tools.r8.a.L("CST", "America/Chicago"), j$.com.android.tools.r8.a.L("CTT", "Asia/Shanghai"), j$.com.android.tools.r8.a.L("EAT", "Africa/Addis_Ababa"), j$.com.android.tools.r8.a.L("ECT", "Europe/Paris"), j$.com.android.tools.r8.a.L("IET", "America/Indiana/Indianapolis"), j$.com.android.tools.r8.a.L("IST", "Asia/Kolkata"), j$.com.android.tools.r8.a.L("JST", "Asia/Tokyo"), j$.com.android.tools.r8.a.L("MIT", "Pacific/Apia"), j$.com.android.tools.r8.a.L("NET", "Asia/Yerevan"), j$.com.android.tools.r8.a.L("NST", "Pacific/Auckland"), j$.com.android.tools.r8.a.L("PLT", "Asia/Karachi"), j$.com.android.tools.r8.a.L("PNT", "America/Phoenix"), j$.com.android.tools.r8.a.L("PRT", "America/Puerto_Rico"), j$.com.android.tools.r8.a.L("PST", "America/Los_Angeles"), j$.com.android.tools.r8.a.L("SST", "Pacific/Guadalcanal"), j$.com.android.tools.r8.a.L("VST", "Asia/Ho_Chi_Minh"), j$.com.android.tools.r8.a.L("EST", "-05:00"), j$.com.android.tools.r8.a.L("MST", "-07:00"), j$.com.android.tools.r8.a.L("HST", "-10:00")};
        HashMap hashMap = new HashMap(28);
        for (int i = 0; i < 28; i++) {
            Map.Entry entry = entryArr[i];
            Object requireNonNull = Objects.requireNonNull(entry.getKey());
            if (hashMap.put(requireNonNull, Objects.requireNonNull(entry.getValue())) != null) {
                throw new IllegalArgumentException("duplicate key: " + requireNonNull);
            }
        }
        f20446a = Collections.unmodifiableMap(hashMap);
    }

    public ZoneId() {
        if (getClass() != ZoneOffset.class && getClass() != u.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    public static ZoneId D(String str, boolean z) {
        Objects.requireNonNull(str, "zoneId");
        return (str.length() <= 1 || str.startsWith("+") || str.startsWith("-")) ? ZoneOffset.H(str) : (str.startsWith("UTC") || str.startsWith("GMT")) ? F(str, 3, z) : str.startsWith("UT") ? F(str, 2, z) : u.H(str, z);
    }

    public static ZoneId E(String str, ZoneOffset zoneOffset) {
        Objects.requireNonNull(str, "prefix");
        Objects.requireNonNull(zoneOffset, "offset");
        if (str.isEmpty()) {
            return zoneOffset;
        }
        if (!str.equals("GMT") && !str.equals("UTC") && !str.equals("UT")) {
            throw new IllegalArgumentException("prefix should be GMT, UTC or UT, is: ".concat(str));
        }
        if (zoneOffset.f20451b != 0) {
            str = str.concat(zoneOffset.f20452c);
        }
        return new u(str, zoneOffset.C());
    }

    public static ZoneId F(String str, int i, boolean z) {
        String substring = str.substring(0, i);
        if (str.length() == i) {
            return E(substring, ZoneOffset.UTC);
        }
        if (str.charAt(i) != '+' && str.charAt(i) != '-') {
            return u.H(str, z);
        }
        try {
            ZoneOffset H = ZoneOffset.H(str.substring(i));
            return H == ZoneOffset.UTC ? E(substring, H) : E(substring, H);
        } catch (a e2) {
            throw new a("Invalid ID for offset-based ZoneId: ".concat(str), e2);
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    public static ZoneId systemDefault() {
        String id = TimeZone.getDefault().getID();
        Map map = f20446a;
        Objects.requireNonNull(id, "zoneId");
        Objects.requireNonNull(map, "aliasMap");
        Object obj = (String) map.get(id);
        if (obj == null) {
            obj = Objects.requireNonNull(id, "defaultObj");
        }
        return D((String) obj, true);
    }

    private Object writeReplace() {
        return new p((byte) 7, this);
    }

    public abstract j$.time.zone.f C();

    public abstract void G(DataOutput dataOutput);

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneId) {
            return h().equals(((ZoneId) obj).h());
        }
        return false;
    }

    public abstract String h();

    public int hashCode() {
        return h().hashCode();
    }

    public String toString() {
        return h();
    }
}
