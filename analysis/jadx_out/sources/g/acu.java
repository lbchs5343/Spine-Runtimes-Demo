package g;

import android.content.Context;
import android.os.Bundle;

/* loaded from: classes3.dex */
public final class acu {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f10003a;

    /* renamed from: b, reason: collision with root package name */
    public final String f10004b;

    /* renamed from: c, reason: collision with root package name */
    public final Boolean f10005c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f10006d;

    /* renamed from: e, reason: collision with root package name */
    public final long f10007e;

    /* renamed from: f, reason: collision with root package name */
    public final Long f10008f;

    /* renamed from: g, reason: collision with root package name */
    public final String f10009g;
    public final String h;
    public final String i;
    public final apu j;

    public acu(Context context, apu apuVar, Long l) {
        this.f10003a = true;
        ckd.k(context);
        Context applicationContext = context.getApplicationContext();
        ckd.k(applicationContext);
        this.f10006d = applicationContext;
        this.f10008f = l;
        if (apuVar != null) {
            this.j = apuVar;
            this.f10009g = apuVar.zzf;
            this.i = apuVar.zze;
            this.f10004b = apuVar.zzd;
            this.f10003a = apuVar.zzc;
            this.f10007e = apuVar.zzb;
            this.h = apuVar.zzh;
            Bundle bundle = apuVar.zzg;
            if (bundle != null) {
                this.f10005c = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled", true));
            }
        }
    }
}
