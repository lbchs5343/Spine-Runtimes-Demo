package g;

import android.os.Looper;
import androidx.lifecycle.DefaultLifecycleObserverAdapter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class ajs extends euu {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f10336a;

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f10337b;

    /* renamed from: c, reason: collision with root package name */
    public int f10338c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f10339d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f10340e;

    /* renamed from: f, reason: collision with root package name */
    public azq f10341f;

    /* renamed from: g, reason: collision with root package name */
    public fqv f10342g;
    public boolean h;

    public ajs(iz izVar) {
        new AtomicReference();
        this.f10339d = true;
        this.f10341f = new azq();
        this.f10342g = fqv.INITIALIZED;
        this.f10336a = new ArrayList();
        this.f10337b = new WeakReference(izVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0030, code lost:
    
        r7.h = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i() {
        iz izVar = (iz) this.f10337b.get();
        if (izVar == null) {
            throw new IllegalStateException("LifecycleOwner of this LifecycleRegistry is already garbage collected. It is too late to change lifecycle state.");
        }
        while (true) {
            azq azqVar = this.f10341f;
            if (azqVar.f12803e != 0) {
                frv frvVar = azqVar.f12804f;
                bff.d(frvVar);
                fqv fqvVar = ((fpn) frvVar.f17315d).f17202a;
                frv frvVar2 = this.f10341f.f12805g;
                bff.d(frvVar2);
                fqv fqvVar2 = ((fpn) frvVar2.f17315d).f17202a;
                if (fqvVar == fqvVar2 && this.f10342g == fqvVar2) {
                    break;
                }
                this.h = false;
                fqv fqvVar3 = this.f10342g;
                frv frvVar3 = this.f10341f.f12804f;
                bff.d(frvVar3);
                if (fqvVar3.compareTo(((fpn) frvVar3.f17315d).f17202a) < 0) {
                    azq azqVar2 = this.f10341f;
                    cwl cwlVar = new cwl(azqVar2.f12805g, azqVar2.f12804f, 1);
                    azqVar2.f12802d.put(cwlVar, Boolean.FALSE);
                    while (cwlVar.hasNext() && !this.h) {
                        Map.Entry entry = (Map.Entry) cwlVar.next();
                        bff.e(entry, "next()");
                        esc escVar = (esc) entry.getKey();
                        fpn fpnVar = (fpn) entry.getValue();
                        while (fpnVar.f17202a.compareTo(this.f10342g) > 0 && !this.h && this.f10341f.f11129a.containsKey(escVar)) {
                            uu uuVar = dtn.Companion;
                            fqv fqvVar4 = fpnVar.f17202a;
                            uuVar.getClass();
                            dtn a2 = uu.a(fqvVar4);
                            if (a2 == null) {
                                throw new IllegalStateException("no event down from " + fpnVar.f17202a);
                            }
                            this.f10336a.add(a2.a());
                            fpnVar.c(izVar, a2);
                            this.f10336a.remove(r4.size() - 1);
                        }
                    }
                }
                frv frvVar4 = this.f10341f.f12805g;
                if (!this.h && frvVar4 != null && this.f10342g.compareTo(((fpn) frvVar4.f17315d).f17202a) > 0) {
                    azq azqVar3 = this.f10341f;
                    azqVar3.getClass();
                    dgv dgvVar = new dgv(azqVar3);
                    azqVar3.f12802d.put(dgvVar, Boolean.FALSE);
                    while (dgvVar.hasNext() && !this.h) {
                        Map.Entry entry2 = (Map.Entry) dgvVar.next();
                        esc escVar2 = (esc) entry2.getKey();
                        fpn fpnVar2 = (fpn) entry2.getValue();
                        while (fpnVar2.f17202a.compareTo(this.f10342g) < 0 && !this.h && this.f10341f.f11129a.containsKey(escVar2)) {
                            this.f10336a.add(fpnVar2.f17202a);
                            uu uuVar2 = dtn.Companion;
                            fqv fqvVar5 = fpnVar2.f17202a;
                            uuVar2.getClass();
                            dtn b2 = uu.b(fqvVar5);
                            if (b2 == null) {
                                throw new IllegalStateException("no event up from " + fpnVar2.f17202a);
                            }
                            fpnVar2.c(izVar, b2);
                            this.f10336a.remove(r4.size() - 1);
                        }
                    }
                }
            } else {
                break;
            }
        }
    }

    public final void j(String str) {
        if (this.f10339d) {
            dav.d().f13881c.getClass();
            if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
                throw new IllegalStateException(tn.ad("Method ", str, " must be called on the main thread").toString());
            }
        }
    }

    public final void k(dtn dtnVar) {
        bff.p(dtnVar, "event");
        j("handleLifecycleEvent");
        m(dtnVar.a());
    }

    @Override // g.euu
    public final void l(ajm ajmVar) {
        iz izVar;
        j("addObserver");
        fqv fqvVar = this.f10342g;
        fqv fqvVar2 = fqv.DESTROYED;
        if (fqvVar != fqvVar2) {
            fqvVar2 = fqv.INITIALIZED;
        }
        bff.p(fqvVar2, "initialState");
        fpn fpnVar = new fpn();
        int i = bqv.f12048a;
        boolean z = ajmVar instanceof blu;
        Object obj = null;
        fpnVar.f17203b = z ? new DefaultLifecycleObserverAdapter((blu) ajmVar, ajmVar) : z ? new DefaultLifecycleObserverAdapter((blu) ajmVar, null) : ajmVar;
        fpnVar.f17202a = fqvVar2;
        azq azqVar = this.f10341f;
        frv b2 = azqVar.b(ajmVar);
        if (b2 != null) {
            obj = b2.f17315d;
        } else {
            HashMap hashMap = azqVar.f11129a;
            frv frvVar = new frv(ajmVar, fpnVar);
            azqVar.f12803e++;
            frv frvVar2 = azqVar.f12805g;
            if (frvVar2 == null) {
                azqVar.f12804f = frvVar;
                azqVar.f12805g = frvVar;
            } else {
                frvVar2.f17312a = frvVar;
                frvVar.f17313b = frvVar2;
                azqVar.f12805g = frvVar;
            }
            hashMap.put(ajmVar, frvVar);
        }
        if (((fpn) obj) == null && (izVar = (iz) this.f10337b.get()) != null) {
            boolean z2 = this.f10338c != 0 || this.f10340e;
            fqv o = o(ajmVar);
            this.f10338c++;
            while (fpnVar.f17202a.compareTo(o) < 0 && this.f10341f.f11129a.containsKey(ajmVar)) {
                fqv fqvVar3 = fpnVar.f17202a;
                ArrayList arrayList = this.f10336a;
                arrayList.add(fqvVar3);
                uu uuVar = dtn.Companion;
                fqv fqvVar4 = fpnVar.f17202a;
                uuVar.getClass();
                dtn b3 = uu.b(fqvVar4);
                if (b3 == null) {
                    throw new IllegalStateException("no event up from " + fpnVar.f17202a);
                }
                fpnVar.c(izVar, b3);
                arrayList.remove(arrayList.size() - 1);
                o = o(ajmVar);
            }
            if (!z2) {
                i();
            }
            this.f10338c--;
        }
    }

    public final void m(fqv fqvVar) {
        fqv fqvVar2 = this.f10342g;
        if (fqvVar2 == fqvVar) {
            return;
        }
        if (fqvVar2 == fqv.INITIALIZED && fqvVar == fqv.DESTROYED) {
            throw new IllegalStateException(("no event down from " + this.f10342g + " in component " + this.f10337b.get()).toString());
        }
        this.f10342g = fqvVar;
        if (this.f10340e || this.f10338c != 0) {
            this.h = true;
            return;
        }
        this.f10340e = true;
        i();
        this.f10340e = false;
        if (this.f10342g == fqv.DESTROYED) {
            this.f10341f = new azq();
        }
    }

    @Override // g.euu
    public final void n(esc escVar) {
        bff.p(escVar, "observer");
        j("removeObserver");
        this.f10341f.c(escVar);
    }

    public final fqv o(ajm ajmVar) {
        fpn fpnVar;
        HashMap hashMap = this.f10341f.f11129a;
        frv frvVar = hashMap.containsKey(ajmVar) ? ((frv) hashMap.get(ajmVar)).f17313b : null;
        fqv fqvVar = (frvVar == null || (fpnVar = (fpn) frvVar.f17315d) == null) ? null : fpnVar.f17202a;
        ArrayList arrayList = this.f10336a;
        fqv fqvVar2 = arrayList.isEmpty() ? null : (fqv) arrayList.get(arrayList.size() - 1);
        fqv fqvVar3 = this.f10342g;
        bff.p(fqvVar3, "state1");
        if (fqvVar == null || fqvVar.compareTo(fqvVar3) >= 0) {
            fqvVar = fqvVar3;
        }
        return (fqvVar2 == null || fqvVar2.compareTo(fqvVar) >= 0) ? fqvVar : fqvVar2;
    }

    public final void p(fqv fqvVar) {
        bff.p(fqvVar, "state");
        j("setCurrentState");
        m(fqvVar);
    }
}
