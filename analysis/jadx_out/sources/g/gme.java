package g;

import android.view.View;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzet;

/* loaded from: classes3.dex */
public final class gme implements ghx, xl {

    /* renamed from: a, reason: collision with root package name */
    public int f18390a;

    /* renamed from: b, reason: collision with root package name */
    public int f18391b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f18392c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18393d;

    /* renamed from: e, reason: collision with root package name */
    public final int f18394e;

    public gme(int i, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.f18393d = i2;
        this.f18394e = i3;
        this.f18390a = i4;
        this.f18391b = i5;
        this.f18392c = bArr;
    }

    public gme(View view, int i, int i2, int i3, int i4) {
        this.f18393d = i;
        this.f18392c = view;
        this.f18394e = i2;
        this.f18390a = i3;
        this.f18391b = i4;
    }

    public gme(zzet zzetVar) {
        zzed zzedVar = zzetVar.zza;
        this.f18392c = zzedVar;
        zzedVar.zzL(12);
        this.f18394e = zzedVar.zzp() & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        this.f18393d = zzedVar.zzp();
    }

    @Override // g.ghx
    public anp k(View view, anp anpVar) {
        View view2 = (View) this.f18392c;
        oi i = anpVar.f10526b.i(MediaPlayer.MEDIA_PLAYER_OPTION_AUDIO_CURRENT_DOWNLOAD_INDEX);
        int i2 = this.f18393d;
        if (i2 >= 0) {
            view2.getLayoutParams().height = i2 + i.f19760d;
            view2.setLayoutParams(view2.getLayoutParams());
        }
        view2.setPadding(this.f18394e + i.f19759c, this.f18390a + i.f19760d, this.f18391b + i.f19761e, view2.getPaddingBottom());
        return anpVar;
    }

    @Override // g.xl
    public int zza() {
        return -1;
    }

    @Override // g.xl
    public int zzb() {
        return this.f18393d;
    }

    @Override // g.xl
    public int zzc() {
        zzed zzedVar = (zzed) this.f18392c;
        int i = this.f18394e;
        if (i == 8) {
            return zzedVar.zzm();
        }
        if (i == 16) {
            return zzedVar.zzq();
        }
        int i2 = this.f18390a;
        this.f18390a = i2 + 1;
        if (i2 % 2 != 0) {
            return this.f18391b & 15;
        }
        int zzm = zzedVar.zzm();
        this.f18391b = zzm;
        return (zzm & MediaPlayer.MEDIA_PLAYER_OPTION_GET_PLAY_WASTE_DATA) >> 4;
    }
}
