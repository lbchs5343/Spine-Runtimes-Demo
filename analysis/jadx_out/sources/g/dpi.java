package g;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import j$.time.ZoneOffset;
import j$.time.format.DateTimeFormatter;
import j$.util.DateRetargetClass;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public final class dpi {

    /* renamed from: a, reason: collision with root package name */
    public final SharedPreferences f14590a;

    public dpi(Context context, String str) {
        this.f14590a = context.getSharedPreferences("FirebaseHeartBeat" + str, 0);
    }

    public final synchronized String b(long j) {
        if (Build.VERSION.SDK_INT >= 26) {
            return DateRetargetClass.toInstant(new Date(j)).atOffset(ZoneOffset.UTC).toLocalDateTime().format(DateTimeFormatter.ISO_LOCAL_DATE);
        }
        return new SimpleDateFormat("yyyy-MM-dd", Locale.UK).format(new Date(j));
    }

    public final synchronized void c(long j, String str) {
        try {
            String b2 = b(j);
            if (this.f14590a.getString("last-used-date", "").equals(b2)) {
                return;
            }
            long j2 = this.f14590a.getLong("fire-count", 0L);
            if (j2 + 1 == 30) {
                d();
                j2 = this.f14590a.getLong("fire-count", 0L);
            }
            HashSet hashSet = new HashSet(this.f14590a.getStringSet(str, new HashSet()));
            hashSet.add(b2);
            this.f14590a.edit().putStringSet(str, hashSet).putLong("fire-count", j2 + 1).putString("last-used-date", b2).commit();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void d() {
        try {
            long j = this.f14590a.getLong("fire-count", 0L);
            String str = "";
            String str2 = null;
            for (Map.Entry<String, ?> entry : this.f14590a.getAll().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    for (String str3 : (Set) entry.getValue()) {
                        if (str2 != null && str2.compareTo(str3) <= 0) {
                        }
                        str = entry.getKey();
                        str2 = str3;
                    }
                }
            }
            HashSet hashSet = new HashSet(this.f14590a.getStringSet(str, new HashSet()));
            hashSet.remove(str2);
            this.f14590a.edit().putStringSet(str, hashSet).putLong("fire-count", j - 1).commit();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void e(long j) {
        this.f14590a.edit().putLong("fire-global", j).commit();
    }

    public final synchronized void f() {
        try {
            SharedPreferences.Editor edit = this.f14590a.edit();
            for (Map.Entry<String, ?> entry : this.f14590a.getAll().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    edit.remove(entry.getKey());
                }
            }
            edit.remove("fire-count");
            edit.commit();
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized ArrayList g() {
        ArrayList arrayList;
        try {
            arrayList = new ArrayList();
            for (Map.Entry<String, ?> entry : this.f14590a.getAll().entrySet()) {
                if (entry.getValue() instanceof Set) {
                    arrayList.add(new dpz(new ArrayList((Set) entry.getValue()), entry.getKey()));
                }
            }
            e(System.currentTimeMillis());
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }
}
