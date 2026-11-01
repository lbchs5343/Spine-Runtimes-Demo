package g;

import android.graphics.Color;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzgcr;

/* loaded from: classes3.dex */
public final class hdy {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f19315a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f19316b;

    /* renamed from: c, reason: collision with root package name */
    public final float f19317c;

    /* renamed from: d, reason: collision with root package name */
    public final String f19318d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f19319e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f19320f;

    /* renamed from: g, reason: collision with root package name */
    public final int f19321g;
    public final int h;
    public final Integer i;
    public final boolean j;

    public hdy(String str, int i, Integer num, Integer num2, float f2, boolean z, boolean z2, boolean z3, boolean z4, int i2) {
        this.f19318d = str;
        this.f19321g = i;
        this.i = num;
        this.f19316b = num2;
        this.f19317c = f2;
        this.f19319e = z;
        this.j = z2;
        this.f19315a = z3;
        this.f19320f = z4;
        this.h = i2;
    }

    public static Integer k(String str) {
        try {
            long parseLong = str.startsWith("&H") ? Long.parseLong(str.substring(2), 16) : Long.parseLong(str);
            zzdb.zzd(parseLong <= 4294967295L);
            return Integer.valueOf(Color.argb(zzgcr.zzb(((parseLong >> 24) & 255) ^ 255), zzgcr.zzb(parseLong & 255), zzgcr.zzb((parseLong >> 8) & 255), zzgcr.zzb((parseLong >> 16) & 255)));
        } catch (IllegalArgumentException e2) {
            zzdt.zzg("SsaStyle", "Failed to parse color expression: '" + str + "'", e2);
            return null;
        }
    }

    public static boolean l(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            return parseInt == 1 || parseInt == -1;
        } catch (NumberFormatException e2) {
            zzdt.zzg("SsaStyle", "Failed to parse boolean value: '" + str + "'", e2);
            return false;
        }
    }
}
