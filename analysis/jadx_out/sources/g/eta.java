package g;

import com.bykv.vk.component.ttvideo.player.C;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import com.google.android.gms.internal.ads.zzadx;
import com.google.android.gms.internal.ads.zzajf;
import com.google.android.gms.internal.ads.zzajh;
import com.google.android.gms.internal.ads.zzed;
import com.google.android.gms.internal.ads.zzen;

/* loaded from: classes3.dex */
public final class eta {

    /* renamed from: a, reason: collision with root package name */
    public int f16131a;

    /* renamed from: c, reason: collision with root package name */
    public zzajh f16133c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f16134d;

    /* renamed from: e, reason: collision with root package name */
    public akq f16135e;

    /* renamed from: f, reason: collision with root package name */
    public final zzadx f16136f;

    /* renamed from: g, reason: collision with root package name */
    public int f16137g;
    public int h;
    public int l;
    public final jk i = new jk();
    public final zzed k = new zzed();
    public final zzed j = new zzed(1);

    /* renamed from: b, reason: collision with root package name */
    public final zzed f16132b = new zzed();

    public eta(zzadx zzadxVar, zzajh zzajhVar, akq akqVar) {
        this.f16136f = zzadxVar;
        this.f16133c = zzajhVar;
        this.f16135e = akqVar;
        this.f16133c = zzajhVar;
        this.f16135e = akqVar;
        zzadxVar.zzl(zzajhVar.zza.zzf);
        m();
    }

    public final void m() {
        jk jkVar = this.i;
        jkVar.f19488e = 0;
        jkVar.j = 0L;
        jkVar.o = false;
        jkVar.f19485b = false;
        jkVar.f19486c = false;
        jkVar.k = null;
        this.f16137g = 0;
        this.f16131a = 0;
        this.l = 0;
        this.h = 0;
        this.f16134d = false;
    }

    public final boolean n() {
        this.f16137g++;
        if (!this.f16134d) {
            return false;
        }
        int i = this.l + 1;
        this.l = i;
        int[] iArr = this.i.q;
        int i2 = this.f16131a;
        if (i != iArr[i2]) {
            return true;
        }
        this.f16131a = i2 + 1;
        this.l = 0;
        return false;
    }

    public final int o() {
        int i = !this.f16134d ? this.f16133c.zzg[this.f16137g] : this.i.n[this.f16137g] ? 1 : 0;
        return q() != null ? i | C.ENCODING_PCM_32BIT : i;
    }

    public final int p(int i, int i2) {
        zzed zzedVar;
        zzajf q = q();
        if (q == null) {
            return 0;
        }
        int i3 = q.zzd;
        jk jkVar = this.i;
        if (i3 != 0) {
            zzedVar = jkVar.f19487d;
        } else {
            byte[] bArr = q.zze;
            int i4 = zzen.zza;
            i3 = bArr.length;
            zzed zzedVar2 = this.f16132b;
            zzedVar2.zzJ(bArr, i3);
            zzedVar = zzedVar2;
        }
        boolean z = jkVar.f19485b && jkVar.f19489f[this.f16137g];
        boolean z2 = z || i2 != 0;
        int i5 = true != z2 ? 0 : TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;
        zzed zzedVar3 = this.j;
        zzedVar3.zzN()[0] = (byte) (i5 | i3);
        zzedVar3.zzL(0);
        zzadx zzadxVar = this.f16136f;
        zzadxVar.zzr(zzedVar3, 1, 1);
        zzadxVar.zzr(zzedVar, i3, 1);
        if (!z2) {
            return i3 + 1;
        }
        zzed zzedVar4 = this.k;
        if (!z) {
            zzedVar4.zzI(8);
            byte[] zzN = zzedVar4.zzN();
            zzN[0] = 0;
            zzN[1] = 1;
            zzN[2] = 0;
            zzN[3] = (byte) i2;
            zzN[4] = (byte) ((i >> 24) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            zzN[5] = (byte) ((i >> 16) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            zzN[6] = (byte) ((i >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            zzN[7] = (byte) (i & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            zzadxVar.zzr(zzedVar4, 8, 1);
            return i3 + 9;
        }
        int i6 = i3 + 1;
        zzed zzedVar5 = jkVar.f19487d;
        int zzq = zzedVar5.zzq();
        zzedVar5.zzM(-2);
        int i7 = (zzq * 6) + 2;
        if (i2 != 0) {
            zzedVar4.zzI(i7);
            byte[] zzN2 = zzedVar4.zzN();
            zzedVar5.zzH(zzN2, 0, i7);
            int i8 = (((zzN2[2] & 255) << 8) | (zzN2[3] & 255)) + i2;
            zzN2[2] = (byte) ((i8 >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
            zzN2[3] = (byte) (i8 & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE);
        } else {
            zzedVar4 = zzedVar5;
        }
        zzadxVar.zzr(zzedVar4, i7, 1);
        return i6 + i7;
    }

    public final zzajf q() {
        if (!this.f16134d) {
            return null;
        }
        jk jkVar = this.i;
        akq akqVar = jkVar.h;
        int i = zzen.zza;
        int i2 = akqVar.f10401b;
        zzajf zzajfVar = jkVar.k;
        if (zzajfVar == null) {
            zzajfVar = this.f16133c.zza.zza(i2);
        }
        if (zzajfVar == null || !zzajfVar.zza) {
            return null;
        }
        return zzajfVar;
    }
}
