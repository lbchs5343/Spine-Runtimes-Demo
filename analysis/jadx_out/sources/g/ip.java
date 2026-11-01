package g;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes3.dex */
public abstract class ip {

    /* renamed from: a, reason: collision with root package name */
    public static final ghg f19436a = new ghg(new byte[0], 0, 0, false);

    /* renamed from: b, reason: collision with root package name */
    public static final int f19437b;

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicReference[] f19438c;

    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        f19437b = highestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i = 0; i < highestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference();
        }
        f19438c = atomicReferenceArr;
    }

    public static final void d(ghg ghgVar) {
        bff.p(ghgVar, "segment");
        if (ghgVar.f18157d != null || ghgVar.f18160g != null) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (ghgVar.f18154a) {
            return;
        }
        AtomicReference atomicReference = f19438c[(int) (Thread.currentThread().getId() & (f19437b - 1))];
        ghg ghgVar2 = f19436a;
        ghg ghgVar3 = (ghg) atomicReference.getAndSet(ghgVar2);
        if (ghgVar3 == ghgVar2) {
            return;
        }
        int i = ghgVar3 != null ? ghgVar3.f18159f : 0;
        if (i >= 65536) {
            atomicReference.set(ghgVar3);
            return;
        }
        ghgVar.f18157d = ghgVar3;
        ghgVar.f18158e = 0;
        ghgVar.f18159f = i + 8192;
        atomicReference.set(ghgVar);
    }

    public static final ghg e() {
        AtomicReference atomicReference = f19438c[(int) (Thread.currentThread().getId() & (f19437b - 1))];
        ghg ghgVar = f19436a;
        ghg ghgVar2 = (ghg) atomicReference.getAndSet(ghgVar);
        if (ghgVar2 == ghgVar) {
            return new ghg();
        }
        if (ghgVar2 == null) {
            atomicReference.set(null);
            return new ghg();
        }
        atomicReference.set(ghgVar2.f18157d);
        ghgVar2.f18157d = null;
        ghgVar2.f18159f = 0;
        return ghgVar2;
    }
}
