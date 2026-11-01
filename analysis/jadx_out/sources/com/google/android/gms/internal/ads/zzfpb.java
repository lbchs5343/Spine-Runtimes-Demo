package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import g.aku;
import g.foq;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzfpb implements zzfoc {
    public long i;

    /* renamed from: e, reason: collision with root package name */
    public static final zzfpb f8127e = new zzfpb();

    /* renamed from: a, reason: collision with root package name */
    public static final Handler f8123a = new Handler(Looper.getMainLooper());

    /* renamed from: c, reason: collision with root package name */
    public static Handler f8125c = null;

    /* renamed from: d, reason: collision with root package name */
    public static final foq f8126d = new foq(7);

    /* renamed from: b, reason: collision with root package name */
    public static final foq f8124b = new foq(8);
    public final ArrayList h = new ArrayList();
    public final ArrayList j = new ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public final zzfou f8128f = new zzfou();
    public final zzfoe k = new zzfoe();

    /* renamed from: g, reason: collision with root package name */
    public final zzfov f8129g = new zzfov(new zzfpe());

    public static zzfpb zzd() {
        return f8127e;
    }

    @Override // com.google.android.gms.internal.ads.zzfoc
    public final void zza(View view, zzfod zzfodVar, JSONObject jSONObject, boolean z) {
        zzfou zzfouVar;
        int zzl;
        boolean z2;
        if (zzfos.zza(view) != null || (zzl = (zzfouVar = this.f8128f).zzl(view)) == 3) {
            return;
        }
        JSONObject zza = zzfodVar.zza(view);
        zzfon.zzc(jSONObject, zza);
        String zzd = zzfouVar.zzd(view);
        if (zzd != null) {
            zzfon.zzb(zza, zzd);
            try {
                zza.put("hasWindowFocus", Boolean.valueOf(zzfouVar.zzk(view)));
            } catch (JSONException e2) {
                zzfoo.zza("Error with setting has window focus", e2);
            }
            boolean zzj = zzfouVar.zzj(zzd);
            Object valueOf = Boolean.valueOf(zzj);
            if (zzj) {
                try {
                    zza.put("isPipActive", valueOf);
                } catch (JSONException e3) {
                    zzfoo.zza("Error with setting is picture-in-picture active", e3);
                }
            }
            zzfouVar.zzh();
            return;
        }
        zzfot zzb = zzfouVar.zzb(view);
        if (zzb != null) {
            zzfnu zza2 = zzb.zza();
            JSONArray jSONArray = new JSONArray();
            ArrayList zzb2 = zzb.zzb();
            int size = zzb2.size();
            for (int i = 0; i < size; i++) {
                jSONArray.put((String) zzb2.get(i));
            }
            try {
                zza.put("isFriendlyObstructionFor", jSONArray);
                zza.put("friendlyObstructionClass", zza2.zzd());
                zza.put("friendlyObstructionPurpose", zza2.zza());
                zza.put("friendlyObstructionReason", zza2.zzc());
            } catch (JSONException e4) {
                zzfoo.zza("Error with setting friendly obstruction", e4);
            }
            z2 = true;
        } else {
            z2 = false;
        }
        zzfodVar.zzb(view, zza, this, zzl == 1, z || z2);
    }

    public final void zzh() {
        Handler handler = f8125c;
        if (handler != null) {
            handler.removeCallbacks(f8124b);
            f8125c = null;
        }
    }

    public final void zzi() {
        if (f8125c == null) {
            Handler handler = new Handler(Looper.getMainLooper());
            f8125c = handler;
            handler.post(f8126d);
            f8125c.postDelayed(f8124b, 200L);
        }
    }

    public final void zzj() {
        Handler handler = f8125c;
        if (handler != null) {
            handler.removeCallbacks(f8124b);
            f8125c = null;
        }
        this.h.clear();
        f8123a.post(new aku(10, this));
    }
}
