package g;

import android.hardware.display.DisplayManager;
import com.google.android.gms.internal.ads.zzaat;

/* loaded from: classes3.dex */
public final class ccl implements DisplayManager.DisplayListener {

    /* renamed from: a, reason: collision with root package name */
    public final DisplayManager f12642a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzaat f12643b;

    public ccl(zzaat zzaatVar, DisplayManager displayManager) {
        this.f12643b = zzaatVar;
        this.f12642a = displayManager;
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i) {
        if (i == 0) {
            zzaat.r(this.f12643b, this.f12642a.getDisplay(0));
        }
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i) {
    }
}
