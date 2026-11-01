package g;

import android.os.SystemClock;
import cn.trinea.android.developertools.R;
import java.io.IOException;

/* loaded from: classes.dex */
public final class csg implements deg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13424a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f13425b;

    public /* synthetic */ csg(int i, Object obj) {
        this.f13424a = i;
        this.f13425b = obj;
    }

    @Override // g.deg
    public final void d(String str, Throwable th) {
        switch (this.f13424a) {
            case 0:
                bus busVar = (bus) this.f13425b;
                busVar.q = false;
                if (th != null) {
                    erl.ac(th);
                }
                if (busVar.o) {
                    gm.e(busVar.n, R.string.shizuku_accessibility_failed);
                    busVar.m = null;
                    busVar.w();
                    break;
                }
                break;
            default:
                ((ark) this.f13425b).aa(false, th, str);
                break;
        }
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [g.ayt] */
    @Override // g.deg
    public final void onSuccess(Object obj) {
        switch (this.f13424a) {
            case 0:
                bus busVar = (bus) this.f13425b;
                busVar.q = false;
                if (busVar.o) {
                    busVar.f12245e = true;
                    busVar.x();
                    break;
                }
                break;
            default:
                ark arkVar = (ark) this.f13425b;
                if (!arkVar.f10713b.isEmpty()) {
                    final long uptimeMillis = SystemClock.uptimeMillis() + 8000;
                    ?? r2 = new Runnable() { // from class: g.ayt
                        @Override // java.lang.Runnable
                        public final void run() {
                            ark arkVar2 = (ark) csg.this.f13425b;
                            if (arkVar2.f10713b.isEmpty()) {
                                return;
                            }
                            if (!arkVar2.w()) {
                                arkVar2.aa(false, null, "permission_required");
                                return;
                            }
                            if (arkVar2.ab()) {
                                arkVar2.aa(true, null, null);
                            } else if (SystemClock.uptimeMillis() >= uptimeMillis) {
                                arkVar2.aa(false, new IOException("Accessibility service did not bind"), "accessibility_bind_timeout");
                            } else {
                                arkVar2.m.postDelayed(arkVar2.l, 150L);
                            }
                        }
                    };
                    arkVar.l = r2;
                    r2.run();
                    break;
                }
                break;
        }
    }
}
