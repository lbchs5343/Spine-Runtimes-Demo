package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.ads.mediation.AbstractAdViewAdapter;
import g.aeh;
import g.dcy;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes3.dex */
public abstract class zzeik implements zzefb {
    public abstract dcy g(zzffo zzffoVar, Bundle bundle, zzfet zzfetVar, zzfff zzfffVar);

    @Override // com.google.android.gms.internal.ads.zzefb
    public final dcy zza(zzfff zzfffVar, zzfet zzfetVar) {
        String optString = zzfetVar.zzv.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, "");
        zzffo zzffoVar = zzfffVar.zza.zza;
        zzffm zzffmVar = new zzffm();
        zzffmVar.zzq(zzffoVar);
        zzffmVar.zzt(optString);
        Bundle bundle = zzffoVar.zzd.zzm;
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        Bundle bundle3 = bundle2.getBundle("com.google.ads.mediation.admob.AdMobAdapter");
        Bundle bundle4 = bundle3 == null ? new Bundle() : new Bundle(bundle3);
        bundle4.putInt("gw", 1);
        String optString2 = zzfetVar.zzv.optString("mad_hac", null);
        if (optString2 != null) {
            bundle4.putString("mad_hac", optString2);
        }
        String optString3 = zzfetVar.zzv.optString("adJson", null);
        if (optString3 != null) {
            bundle4.putString("_ad", optString3);
        }
        bundle4.putBoolean("_noRefresh", true);
        Iterator<String> keys = zzfetVar.zzD.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString4 = zzfetVar.zzD.optString(next, null);
            if (next != null) {
                bundle4.putString(next, optString4);
            }
        }
        bundle2.putBundle("com.google.ads.mediation.admob.AdMobAdapter", bundle4);
        aeh aehVar = zzffoVar.zzd;
        zzffmVar.zzH(new aeh(aehVar.zza, aehVar.zzb, bundle4, aehVar.zzd, aehVar.zze, aehVar.zzf, aehVar.zzg, aehVar.zzh, aehVar.zzi, aehVar.zzj, aehVar.zzk, aehVar.zzl, bundle2, aehVar.zzn, aehVar.zzo, aehVar.zzp, aehVar.zzq, aehVar.zzr, aehVar.zzs, aehVar.zzt, aehVar.zzu, aehVar.zzv, aehVar.zzw, aehVar.zzx, aehVar.zzy, aehVar.zzz));
        zzffo zzJ = zzffmVar.zzJ();
        Bundle bundle5 = new Bundle();
        zzfew zzfewVar = zzfffVar.zzb.zzb;
        Bundle bundle6 = new Bundle();
        bundle6.putStringArrayList("nofill_urls", new ArrayList<>(zzfewVar.zza));
        bundle6.putInt("refresh_interval", zzfewVar.zzc);
        bundle6.putString("gws_query_id", zzfewVar.zzb);
        bundle5.putBundle("parent_common_config", bundle6);
        zzffo zzffoVar2 = zzfffVar.zza.zza;
        Bundle bundle7 = new Bundle();
        bundle7.putString("initial_ad_unit_id", zzffoVar2.zzf);
        bundle7.putString("allocation_id", zzfetVar.zzw);
        bundle7.putString("ad_source_name", zzfetVar.zzF);
        bundle7.putStringArrayList("click_urls", new ArrayList<>(zzfetVar.zzc));
        bundle7.putStringArrayList("imp_urls", new ArrayList<>(zzfetVar.zzd));
        bundle7.putStringArrayList("manual_tracking_urls", new ArrayList<>(zzfetVar.zzp));
        bundle7.putStringArrayList("fill_urls", new ArrayList<>(zzfetVar.zzm));
        bundle7.putStringArrayList("video_start_urls", new ArrayList<>(zzfetVar.zzg));
        bundle7.putStringArrayList("video_reward_urls", new ArrayList<>(zzfetVar.zzh));
        bundle7.putStringArrayList("video_complete_urls", new ArrayList<>(zzfetVar.zzi));
        bundle7.putString("transaction_id", zzfetVar.zzj);
        bundle7.putString("valid_from_timestamp", zzfetVar.zzk);
        bundle7.putBoolean("is_closable_area_disabled", zzfetVar.zzP);
        bundle7.putString("recursive_server_response_data", zzfetVar.zzao);
        if (zzfetVar.zzl != null) {
            Bundle bundle8 = new Bundle();
            bundle8.putInt("rb_amount", zzfetVar.zzl.zzb);
            bundle8.putString("rb_type", zzfetVar.zzl.zza);
            bundle7.putParcelableArray("rewards", new Bundle[]{bundle8});
        }
        bundle5.putBundle("parent_ad_config", bundle7);
        return g(zzJ, bundle5, zzfetVar, zzfffVar);
    }

    @Override // com.google.android.gms.internal.ads.zzefb
    public final boolean zzb(zzfff zzfffVar, zzfet zzfetVar) {
        return !TextUtils.isEmpty(zzfetVar.zzv.optString(AbstractAdViewAdapter.AD_UNIT_ID_PARAMETER, ""));
    }
}
