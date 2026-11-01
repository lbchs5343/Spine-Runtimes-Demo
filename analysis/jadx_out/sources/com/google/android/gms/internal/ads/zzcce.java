package com.google.android.gms.internal.ads;

import g.edt;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class zzcce {
    public final boolean zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final int zzh;
    public final boolean zzi;
    public final boolean zzj;
    public final boolean zzk;
    public final boolean zzl;
    public final long zzm;
    public final long zzn;

    /* JADX WARN: Removed duplicated region for block: B:15:0x00c2 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00a7 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public zzcce(String str) {
        long j;
        long j2;
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException unused) {
            }
        }
        this.zza = a(jSONObject, "aggressive_media_codec_release", zzbcn.zzS);
        this.zzb = b(jSONObject, "byte_buffer_precache_limit", zzbcn.zzi);
        this.zzc = b(jSONObject, "exo_cache_buffer_size", zzbcn.zzr);
        this.zzd = b(jSONObject, "exo_connect_timeout_millis", zzbcn.zze);
        zzbce zzbceVar = zzbcn.zzd;
        if (jSONObject != null) {
            try {
                jSONObject.getString("exo_player_version");
            } catch (JSONException unused2) {
            }
            this.zze = b(jSONObject, "exo_read_timeout_millis", zzbcn.zzf);
            this.zzf = b(jSONObject, "load_check_interval_bytes", zzbcn.zzg);
            this.zzg = b(jSONObject, "player_precache_limit", zzbcn.zzh);
            this.zzh = b(jSONObject, "socket_receive_buffer_size", zzbcn.zzj);
            this.zzi = a(jSONObject, "use_cache_data_source", zzbcn.zzeo);
            b(jSONObject, "min_retry_count", zzbcn.zzk);
            this.zzj = a(jSONObject, "treat_load_exception_as_non_fatal", zzbcn.zzm);
            this.zzk = a(jSONObject, "enable_multiple_video_playback", zzbcn.zzbX);
            this.zzl = a(jSONObject, "use_range_http_data_source", zzbcn.zzbZ);
            zzbce zzbceVar2 = zzbcn.zzca;
            if (jSONObject != null) {
                try {
                    j = jSONObject.getLong("range_http_data_source_high_water_mark");
                } catch (JSONException unused3) {
                }
                this.zzm = j;
                zzbce zzbceVar3 = zzbcn.zzcb;
                if (jSONObject != null) {
                    try {
                        j2 = jSONObject.getLong("range_http_data_source_low_water_mark");
                    } catch (JSONException unused4) {
                    }
                    this.zzn = j2;
                }
                j2 = ((Long) edt.f15376a.f15379d.zza(zzbceVar3)).longValue();
                this.zzn = j2;
            }
            j = ((Long) edt.f15376a.f15379d.zza(zzbceVar2)).longValue();
            this.zzm = j;
            zzbce zzbceVar32 = zzbcn.zzcb;
            if (jSONObject != null) {
            }
            j2 = ((Long) edt.f15376a.f15379d.zza(zzbceVar32)).longValue();
            this.zzn = j2;
        }
        this.zze = b(jSONObject, "exo_read_timeout_millis", zzbcn.zzf);
        this.zzf = b(jSONObject, "load_check_interval_bytes", zzbcn.zzg);
        this.zzg = b(jSONObject, "player_precache_limit", zzbcn.zzh);
        this.zzh = b(jSONObject, "socket_receive_buffer_size", zzbcn.zzj);
        this.zzi = a(jSONObject, "use_cache_data_source", zzbcn.zzeo);
        b(jSONObject, "min_retry_count", zzbcn.zzk);
        this.zzj = a(jSONObject, "treat_load_exception_as_non_fatal", zzbcn.zzm);
        this.zzk = a(jSONObject, "enable_multiple_video_playback", zzbcn.zzbX);
        this.zzl = a(jSONObject, "use_range_http_data_source", zzbcn.zzbZ);
        zzbce zzbceVar22 = zzbcn.zzca;
        if (jSONObject != null) {
        }
        j = ((Long) edt.f15376a.f15379d.zza(zzbceVar22)).longValue();
        this.zzm = j;
        zzbce zzbceVar322 = zzbcn.zzcb;
        if (jSONObject != null) {
        }
        j2 = ((Long) edt.f15376a.f15379d.zza(zzbceVar322)).longValue();
        this.zzn = j2;
    }

    public static final boolean a(JSONObject jSONObject, String str, zzbce zzbceVar) {
        boolean booleanValue = ((Boolean) edt.f15376a.f15379d.zza(zzbceVar)).booleanValue();
        if (jSONObject != null) {
            try {
                return jSONObject.getBoolean(str);
            } catch (JSONException unused) {
            }
        }
        return booleanValue;
    }

    public static final int b(JSONObject jSONObject, String str, zzbce zzbceVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException unused) {
            }
        }
        return ((Integer) edt.f15376a.f15379d.zza(zzbceVar)).intValue();
    }
}
