package g;

import android.media.AudioManager;
import android.os.Handler;
import g.dub;
import g.gaz;
import g.gdw;

/* loaded from: classes3.dex */
public final class gaz implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f17835a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ gdw f17836b;

    public gaz(gdw gdwVar, Handler handler) {
        this.f17836b = gdwVar;
        this.f17835a = handler;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(final int i) {
        this.f17835a.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzhs
            @Override // java.lang.Runnable
            public final void run() {
                gdw gdwVar = gaz.this.f17836b;
                int i2 = i;
                if (i2 == -3 || i2 == -2) {
                    if (i2 != -2) {
                        gdwVar.h(4);
                        return;
                    } else {
                        gdwVar.g(0);
                        gdwVar.h(3);
                        return;
                    }
                }
                if (i2 == -1) {
                    gdwVar.g(-1);
                    gdwVar.f();
                    gdwVar.h(1);
                } else if (i2 != 1) {
                    dub.g(i2, "Unknown focus change type: ", "AudioFocusManager");
                } else {
                    gdwVar.h(2);
                    gdwVar.g(1);
                }
            }
        });
    }
}
