package g;

import android.app.Activity;
import android.app.DownloadManager;

/* loaded from: classes.dex */
public final class fhf implements fcd {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f16790a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f16791b;

    public /* synthetic */ fhf(int i, Object obj) {
        this.f16790a = i;
        this.f16791b = obj;
    }

    @Override // g.fcd
    public final void h(String str) {
        switch (this.f16790a) {
            case 0:
                ((b.c.d) this.f16791b).ak();
                break;
            case 1:
                ((b.c.d) this.f16791b).ah();
                break;
            default:
                fzn fznVar = (fzn) this.f16791b;
                aky.x((Activity) fznVar.h, (DownloadManager.Request) fznVar.f17729d, (String) fznVar.f17730e, (String) fznVar.f17731f, (cxc) fznVar.i);
                break;
        }
    }

    @Override // g.fcd
    public final void onDenied(String str) {
        switch (this.f16790a) {
            case 0:
                fyt.f(((b.c.d) this.f16791b).u);
                break;
            case 1:
                fyt.f(((b.c.d) this.f16791b).u);
                break;
            default:
                ((cxc) ((fzn) this.f16791b).i).h(-2L);
                break;
        }
    }
}
