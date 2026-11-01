package g;

import cn.trinea.android.developertools.R;

/* loaded from: classes.dex */
public final class gkp implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final int f18316a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f18317b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f18318c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f18319d = 1;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f18320e;

    public gkp(egu eguVar, aci aciVar, boolean z, int i) {
        bff.p(eguVar, "processor");
        this.f18317b = eguVar;
        this.f18318c = aciVar;
        this.f18320e = z;
        this.f18316a = i;
    }

    public gkp(elf elfVar, int i, boolean z, get getVar) {
        this.f18318c = elfVar;
        this.f18316a = i;
        this.f18320e = z;
        this.f18317b = getVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dly s;
        switch (this.f18319d) {
            case 0:
                StringBuilder sb = new StringBuilder("mct is ");
                int i = this.f18316a;
                sb.append(i);
                sb.append(", is uca ");
                boolean z = this.f18320e;
                sb.append(z);
                erl.y(sb.toString());
                elf elfVar = (elf) this.f18318c;
                afo.ar(elfVar.findViewById(R.id.snackbar_layout), z ? elfVar.getString(R.string.purchased_canceled) : elfVar.getString(R.string.donation_only_from_google_play, cdy.g(elfVar.aa, i)), z ? 0 : -2, R.string.ok, (get) this.f18317b);
                return;
            default:
                if (this.f18320e) {
                    egu eguVar = (egu) this.f18317b;
                    aci aciVar = (aci) this.f18318c;
                    int i2 = this.f18316a;
                    eguVar.getClass();
                    String str = aciVar.f9969a.f18956a;
                    synchronized (eguVar.f15515c) {
                        s = eguVar.s(str);
                    }
                    egu.m(s, i2);
                } else {
                    ((egu) this.f18317b).t((aci) this.f18318c, this.f18316a);
                }
                cyl f2 = cyl.f();
                cyl.g("StopWorkRunnable");
                String str2 = ((aci) this.f18318c).f9969a.f18956a;
                f2.getClass();
                return;
        }
    }
}
