package g;

import android.content.SharedPreferences;
import com.google.android.gms.internal.ads.zzbfc;

/* loaded from: classes3.dex */
public final class fma implements zzbfc {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f17024a;

    public fma(SharedPreferences sharedPreferences) {
        this.f17024a = sharedPreferences;
    }

    @Override // com.google.android.gms.internal.ads.zzbfc
    public final Boolean zza(String str, boolean z) {
        SharedPreferences sharedPreferences = this.f17024a;
        try {
            return Boolean.valueOf(sharedPreferences.getBoolean(str, z));
        } catch (ClassCastException unused) {
            return Boolean.valueOf(sharedPreferences.getString(str, String.valueOf(z)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc
    public final Double zzb(String str, double d2) {
        try {
            return Double.valueOf(r0.getFloat(str, (float) d2));
        } catch (ClassCastException unused) {
            return Double.valueOf(this.f17024a.getString(str, String.valueOf(d2)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc
    public final Long zzc(String str, long j) {
        try {
            return Long.valueOf(this.f17024a.getLong(str, j));
        } catch (ClassCastException unused) {
            return Long.valueOf(r0.getInt(str, (int) j));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbfc
    public final String zzd(String str, String str2) {
        return this.f17024a.getString(str, str2);
    }
}
