package g;

import android.content.Context;
import com.google.android.gms.internal.ads.zzfth;
import com.google.android.gms.internal.ads.zzfti;
import j$.time.Instant;
import java.nio.charset.StandardCharsets;
import java.util.UUID;

/* loaded from: classes3.dex */
public abstract class avb {

    /* renamed from: b, reason: collision with root package name */
    public static final String f10902b = new UUID(0, 0).toString();

    /* renamed from: c, reason: collision with root package name */
    public final String f10903c;

    /* renamed from: d, reason: collision with root package name */
    public final String f10904d;

    /* renamed from: e, reason: collision with root package name */
    public final String f10905e;

    /* renamed from: f, reason: collision with root package name */
    public final g f10906f;

    /* renamed from: g, reason: collision with root package name */
    public final String f10907g;
    public final String h;
    public final zzfti i;

    public avb(Context context, String str, String str2, String str3) {
        if (g.f17764a == null) {
            g.f17764a = new g(context);
        }
        this.f10906f = g.f17764a;
        this.i = zzfti.zza(context);
        this.f10905e = str;
        this.f10907g = str.concat("_3p");
        this.h = str2;
        this.f10903c = str2.concat("_3p");
        this.f10904d = str3;
    }

    public final void j(boolean z) {
        String str = z ? this.f10903c : this.h;
        g gVar = this.f10906f;
        gVar.e(str);
        gVar.e(z ? this.f10907g : this.f10905e);
    }

    public final String k(String str, String str2, String str3) {
        if (str2 != null && str3 != null) {
            return UUID.nameUUIDFromBytes(awf.i(str, str2, str3).getBytes(StandardCharsets.UTF_8)).toString();
        }
        StringBuilder l = tn.l(this.f10904d, ": Invalid argument to generate PAIDv1 on 3p traffic, Ad ID is not null, package name is ");
        l.append(str2 == null ? "null" : "not null");
        l.append(", hashKey is ");
        l.append(str3 == null ? "null" : "not null");
        throw new IllegalArgumentException(l.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final zzfth l(String str, String str2, long j, boolean z) {
        long currentTimeMillis;
        String str3 = this.f10907g;
        g gVar = this.f10906f;
        if (str != null) {
            try {
                UUID.fromString(str);
                if (!str.equals(f10902b)) {
                    String string = gVar.f17767d.getString(str3, null);
                    String string2 = gVar.f17767d.getString("paid_3p_hash_key", null);
                    if (string != null && string2 != null) {
                        if (!string.equals(k(str, str2, string2))) {
                            return m(str, str2);
                        }
                        boolean z2 = str == null;
                        currentTimeMillis = System.currentTimeMillis();
                        if (currentTimeMillis >= 0) {
                            throw new IllegalStateException(this.f10904d.concat(": Invalid negative current timestamp. Updating PAID failed"));
                        }
                        String str4 = this.h;
                        String str5 = this.f10903c;
                        long j2 = gVar.f17767d.getLong(z2 ? str5 : str4, -1L);
                        if (j2 != -1) {
                            if (currentTimeMillis < j2) {
                                gVar.h(Long.valueOf(currentTimeMillis), z2 ? str5 : str4);
                            } else if (currentTimeMillis >= j2 + j) {
                                return m(str, str2);
                            }
                        }
                        if (!z2) {
                            str3 = this.f10905e;
                        }
                        String string3 = gVar.f17767d.getString(str3, null);
                        if (string3 == null && !z) {
                            return m(str, str2);
                        }
                        if (z2) {
                            str4 = str5;
                        }
                        return new zzfth(string3, Instant.ofEpochMilli(gVar.f17767d.getLong(str4, -1L)));
                    }
                }
            } catch (IllegalArgumentException unused) {
            }
            return new zzfth();
        }
        if (str == null) {
        }
        currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis >= 0) {
        }
    }

    public final zzfth m(String str, String str2) {
        if (str == null) {
            return n(UUID.randomUUID().toString(), false);
        }
        String uuid = UUID.randomUUID().toString();
        this.f10906f.h(uuid, "paid_3p_hash_key");
        return n(k(str, str2, uuid), true);
    }

    public final zzfth n(String str, boolean z) {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis < 0) {
            throw new IllegalStateException(this.f10904d.concat(": Invalid negative current timestamp. Updating PAID failed"));
        }
        String str2 = z ? this.f10903c : this.h;
        Long valueOf = Long.valueOf(currentTimeMillis);
        g gVar = this.f10906f;
        gVar.h(valueOf, str2);
        gVar.h(str, z ? this.f10907g : this.f10905e);
        return new zzfth(str, Instant.ofEpochMilli(currentTimeMillis));
    }
}
