package g;

import com.google.android.gms.internal.ads.zzcbj;
import com.google.android.gms.internal.ads.zzcbk;

/* loaded from: classes3.dex */
public final class cmu implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcbj f13141a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13142b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f13143c;

    public cmu(zzcbj zzcbjVar, int i, int i2) {
        this.f13142b = i;
        this.f13143c = i2;
        this.f13141a = zzcbjVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcbk zzcbkVar = this.f13141a.f5141c;
        if (zzcbkVar != null) {
            zzcbkVar.zzj(this.f13142b, this.f13143c);
        }
    }
}
