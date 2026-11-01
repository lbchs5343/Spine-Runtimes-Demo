package com.google.android.gms.internal.ads;

import android.graphics.Color;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzbfi extends zzbfq {

    /* renamed from: a, reason: collision with root package name */
    public static final int f4794a;

    /* renamed from: b, reason: collision with root package name */
    public static final int f4795b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4796c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4797d;

    /* renamed from: f, reason: collision with root package name */
    public final int f4799f;

    /* renamed from: g, reason: collision with root package name */
    public final int f4800g;
    public final String h;
    public final int j;
    public final ArrayList i = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f4798e = new ArrayList();

    static {
        int rgb = Color.rgb(12, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_AVERAGE_BITRATE, MediaPlayer.MEDIA_PLAYER_OPTION_DRM_TYPE);
        f4795b = Color.rgb(MediaPlayer.MEDIA_PLAYER_OPTION_HIJACK_CODE, MediaPlayer.MEDIA_PLAYER_OPTION_HIJACK_CODE, MediaPlayer.MEDIA_PLAYER_OPTION_HIJACK_CODE);
        f4794a = rgb;
    }

    public zzbfi(String str, List list, Integer num, Integer num2, Integer num3, int i, int i2, boolean z) {
        this.h = str;
        for (int i3 = 0; i3 < list.size(); i3++) {
            zzbfl zzbflVar = (zzbfl) list.get(i3);
            this.i.add(zzbflVar);
            this.f4798e.add(zzbflVar);
        }
        this.f4799f = num != null ? num.intValue() : f4795b;
        this.f4800g = num2 != null ? num2.intValue() : f4794a;
        this.j = num3 != null ? num3.intValue() : 12;
        this.f4797d = i;
        this.f4796c = i2;
    }

    public final int zzb() {
        return this.f4797d;
    }

    public final int zzc() {
        return this.f4796c;
    }

    public final int zzd() {
        return this.f4799f;
    }

    public final int zze() {
        return this.f4800g;
    }

    public final int zzf() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.ads.zzbfr
    public final String zzg() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.zzbfr
    public final List zzh() {
        return this.f4798e;
    }

    public final List zzi() {
        return this.i;
    }
}
