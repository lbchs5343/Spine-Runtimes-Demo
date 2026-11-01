package g;

import android.app.AppOpsManager;
import com.google.android.gms.internal.ads.zzawo;

/* loaded from: classes3.dex */
public final class cvq implements AppOpsManager.OnOpActiveChangedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzawo f13602a;

    public cvq(zzawo zzawoVar) {
        this.f13602a = zzawoVar;
    }

    @Override // android.app.AppOpsManager.OnOpActiveChangedListener
    public final void onOpActiveChanged(String str, int i, String str2, boolean z) {
        if (z) {
            this.f13602a.f4555c = System.currentTimeMillis();
            this.f13602a.f4554b = true;
            return;
        }
        zzawo zzawoVar = this.f13602a;
        long currentTimeMillis = System.currentTimeMillis();
        if (zzawoVar.f4556d > 0) {
            zzawo zzawoVar2 = this.f13602a;
            long j = zzawoVar2.f4556d;
            if (currentTimeMillis >= j) {
                zzawoVar2.f4557e = currentTimeMillis - j;
            }
        }
        this.f13602a.f4554b = false;
    }
}
