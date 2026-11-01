package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import g.afo;
import g.agd;
import g.cmo;
import g.edt;
import g.gil;
import g.ti;
import j$.util.Objects;

/* loaded from: classes3.dex */
public final class zzbyi implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public String f5063a = "-1";

    /* renamed from: b, reason: collision with root package name */
    public int f5064b = -1;

    /* renamed from: c, reason: collision with root package name */
    public final Context f5065c;

    /* renamed from: d, reason: collision with root package name */
    public final SharedPreferences f5066d;

    /* renamed from: e, reason: collision with root package name */
    public final gil f5067e;

    public zzbyi(Context context, gil gilVar) {
        this.f5066d = PreferenceManager.getDefaultSharedPreferences(context);
        this.f5067e = gilVar;
        this.f5065c = context;
    }

    public final void f(int i, String str) {
        Context context;
        zzbce zzbceVar = zzbcn.zzaG;
        edt edtVar = edt.f15376a;
        boolean z = true;
        if (!((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue() ? !(str.isEmpty() || str.charAt(0) != '1') : !(i == 0 || str.isEmpty() || (str.charAt(0) != '1' && !str.equals("-1")))) {
            z = false;
        }
        ((cmo) this.f5067e).be(z);
        if (((Boolean) edtVar.f15379d.zza(zzbcn.zzgc)).booleanValue() && z && (context = this.f5065c) != null) {
            context.deleteDatabase("OfflineUpload.db");
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        char c2;
        try {
            zzbce zzbceVar = zzbcn.zzaI;
            edt edtVar = edt.f15376a;
            if (((Boolean) edtVar.f15379d.zza(zzbceVar)).booleanValue()) {
                boolean equals = Objects.equals(str, "gad_has_consent_for_cookies");
                Context context = this.f5065c;
                gil gilVar = this.f5067e;
                if (equals) {
                    int i = sharedPreferences.getInt("gad_has_consent_for_cookies", -1);
                    cmo cmoVar = (cmo) gilVar;
                    cmoVar.aj();
                    if (i != cmoVar.t) {
                        ((cmo) gilVar).be(true);
                        afo.ay(context);
                    }
                    ((cmo) gilVar).ao(i);
                    return;
                }
                if (Objects.equals(str, "IABTCF_TCString")) {
                    String string = sharedPreferences.getString(str, "-1");
                    cmo cmoVar2 = (cmo) gilVar;
                    cmoVar2.aj();
                    if (!Objects.equals(string, cmoVar2.i)) {
                        ((cmo) gilVar).be(true);
                        afo.ay(context);
                    }
                    ((cmo) gilVar).ay(string);
                    return;
                }
                return;
            }
            String string2 = sharedPreferences.getString("IABTCF_PurposeConsents", "-1");
            int i2 = sharedPreferences.getInt("gad_has_consent_for_cookies", -1);
            String valueOf = String.valueOf(str);
            int hashCode = valueOf.hashCode();
            if (hashCode != -2004976699) {
                if (hashCode == -527267622 && valueOf.equals("gad_has_consent_for_cookies")) {
                    c2 = 1;
                }
                c2 = 65535;
            } else {
                if (valueOf.equals("IABTCF_PurposeConsents")) {
                    c2 = 0;
                }
                c2 = 65535;
            }
            if (c2 == 0) {
                if (string2.equals("-1") || this.f5063a.equals(string2)) {
                    return;
                }
                this.f5063a = string2;
                f(i2, string2);
                return;
            }
            if (c2 != 1) {
                return;
            }
            if (!((Boolean) edtVar.f15379d.zza(zzbcn.zzaG)).booleanValue() || i2 == -1 || this.f5064b == i2) {
                return;
            }
            this.f5064b = i2;
            f(i2, string2);
        } catch (Throwable th) {
            ti.f20033a.f20034ab.zzw(th, "AdMobPlusIdlessListener.onSharedPreferenceChanged");
            agd.h();
        }
    }
}
