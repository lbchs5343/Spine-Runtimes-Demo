package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import g.dcy;
import g.edt;
import g.esy;
import g.ftw;
import g.ti;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class zzess implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7510a;

    /* renamed from: b, reason: collision with root package name */
    public final zzges f7511b;

    public zzess(Context context, zzges zzgesVar) {
        this.f7510a = context;
        this.f7511b = zzgesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 18;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        return this.f7511b.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzesp
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Context context = zzess.this.f7510a;
                esy esyVar = ti.f20033a.z;
                zzbce zzbceVar = zzbcn.zzfV;
                zzbcl zzbclVar = edt.f15376a.f15379d;
                String string = !((Boolean) zzbclVar.zza(zzbceVar)).booleanValue() ? "" : context.getSharedPreferences("mobileads_consent", 0).getString("consent_string", "");
                String string2 = ((Boolean) zzbclVar.zza(zzbcn.zzfX)).booleanValue() ? context.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", "") : "";
                Bundle bundle = null;
                if (((Boolean) zzbclVar.zza(zzbcn.zzfW)).booleanValue()) {
                    SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                    Bundle bundle2 = new Bundle();
                    if (defaultSharedPreferences.contains("IABConsent_CMPPresent")) {
                        bundle2.putBoolean("IABConsent_CMPPresent", defaultSharedPreferences.getBoolean("IABConsent_CMPPresent", false));
                    }
                    String[] strArr = {"IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"};
                    for (int i = 0; i < 4; i++) {
                        String str = strArr[i];
                        if (defaultSharedPreferences.contains(str)) {
                            bundle2.putString(str, defaultSharedPreferences.getString(str, null));
                        }
                    }
                    bundle = bundle2;
                }
                return new ftw(string, string2, bundle);
            }
        });
    }
}
