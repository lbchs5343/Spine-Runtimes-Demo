package com.google.android.gms.internal.ads;

import com.bykv.vk.component.ttvideo.ILivePlayer;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;

/* loaded from: classes3.dex */
public final class zzbec {
    public static final zzbdx zza = zzbdx.zzb("gads:app_permissions_caching_expiry_ms:expiry", 60000);
    public static final zzbdx zzb = zzbdx.zzb("gads:audio_caching_expiry_ms:expiry", PushUIConfig.dismissTime);
    public static final zzbdx zzc = zzbdx.zzb("gads:battery_caching_expiry_ms:expiry", ILivePlayer.RETRY_TIME_INTERVAL_DEFAULT);
    public static final zzbdx zzd = zzbdx.zzb("gads:device_info_caching_expiry_ms:expiry", 300000);
    public static final zzbdx zze = zzbdx.zzb("gads:hsdp_caching_expiry_ms:expiry", 600000);
    public static final zzbdx zzf = zzbdx.zzb("gads:memory_caching_expiry_ms:expiry", PushUIConfig.dismissTime);
    public static final zzbdx zzg = zzbdx.zzb("gads:sdk_environment_caching_expiry_ms:expiry", 600000);
    public static final zzbdx zzh = zzbdx.zzb("gads:telephony_caching_expiry_ms:expiry", PushUIConfig.dismissTime);
}
