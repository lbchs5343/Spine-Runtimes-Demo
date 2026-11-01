package g;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import com.google.android.gms.internal.ads.zzen;
import com.google.android.gms.internal.ads.zzfxg;
import com.google.android.gms.internal.ads.zzfxk;

/* loaded from: classes3.dex */
public final class gdw {

    /* renamed from: c, reason: collision with root package name */
    public final zzfxg f17962c;

    /* renamed from: d, reason: collision with root package name */
    public final gaz f17963d;

    /* renamed from: e, reason: collision with root package name */
    public eec f17964e;

    /* renamed from: b, reason: collision with root package name */
    public float f17961b = 1.0f;

    /* renamed from: a, reason: collision with root package name */
    public int f17960a = 0;

    public gdw(final Context context, Handler handler, eec eecVar) {
        this.f17962c = zzfxk.zza(new zzfxg() { // from class: com.google.android.gms.internal.ads.zzhr
            @Override // com.google.android.gms.internal.ads.zzfxg
            public final Object zza() {
                AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService(MediaFormat.KEY_AUDIO);
                audioManager.getClass();
                return audioManager;
            }
        });
        this.f17964e = eecVar;
        this.f17963d = new gaz(this, handler);
    }

    public final void f() {
        int i = this.f17960a;
        if (i == 1 || i == 0 || zzen.zza >= 26) {
            return;
        }
        ((AudioManager) this.f17962c.zza()).abandonAudioFocus(this.f17963d);
    }

    public final void g(int i) {
        eec eecVar = this.f17964e;
        if (eecVar != null) {
            int i2 = i == -1 ? 2 : 1;
            ij ijVar = eecVar.f15392a;
            ijVar.ao(i, i2, ijVar.zzu());
        }
    }

    public final void h(int i) {
        if (this.f17960a == i) {
            return;
        }
        this.f17960a = i;
        float f2 = i == 4 ? 0.2f : 1.0f;
        if (this.f17961b != f2) {
            this.f17961b = f2;
            eec eecVar = this.f17964e;
            if (eecVar != null) {
                ij ijVar = eecVar.f15392a;
                ijVar.an(1, 2, Float.valueOf(ijVar.l * ijVar.al.f17961b));
            }
        }
    }
}
