package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.IntFunction;

/* renamed from: j$.util.stream.o, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0359o extends AbstractC0312e2 {
    public static M0 T0(AbstractC0405x1 abstractC0405x1, Spliterator spliterator) {
        j$.time.format.a aVar = new j$.time.format.a(24);
        j$.time.format.a aVar2 = new j$.time.format.a(25);
        j$.time.format.a aVar3 = new j$.time.format.a(26);
        Objects.requireNonNull(aVar);
        Objects.requireNonNull(aVar2);
        Objects.requireNonNull(aVar3);
        return new M0((Collection) new C1(EnumC0298b3.REFERENCE, aVar3, aVar2, aVar, 3).i(abstractC0405x1, spliterator));
    }

    @Override // j$.util.stream.AbstractC0289a
    public final I0 M0(AbstractC0405x1 abstractC0405x1, Spliterator spliterator, IntFunction intFunction) {
        AbstractC0289a abstractC0289a = (AbstractC0289a) abstractC0405x1;
        if (EnumC0293a3.DISTINCT.l(abstractC0289a.m)) {
            return abstractC0405x1.j0(spliterator, false, intFunction);
        }
        if (EnumC0293a3.ORDERED.l(abstractC0289a.m)) {
            return T0(abstractC0405x1, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        j$.util.concurrent.t tVar = new j$.util.concurrent.t(4, atomicBoolean, concurrentHashMap);
        Objects.requireNonNull(tVar);
        new Q(tVar, false).a(abstractC0405x1, spliterator);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new M0(keySet);
    }

    @Override // j$.util.stream.AbstractC0289a
    public final Spliterator N0(AbstractC0289a abstractC0289a, Spliterator spliterator) {
        return EnumC0293a3.DISTINCT.l(abstractC0289a.m) ? abstractC0289a.G0(spliterator) : EnumC0293a3.ORDERED.l(abstractC0289a.m) ? T0(abstractC0289a, spliterator).spliterator() : new C0338j3(abstractC0289a.G0(spliterator), new ConcurrentHashMap());
    }

    @Override // j$.util.stream.AbstractC0289a
    public final InterfaceC0362o2 P0(int i, InterfaceC0362o2 interfaceC0362o2) {
        Objects.requireNonNull(interfaceC0362o2);
        return EnumC0293a3.DISTINCT.l(i) ? interfaceC0362o2 : EnumC0293a3.SORTED.l(i) ? new C0349m(interfaceC0362o2) : new C0354n(interfaceC0362o2);
    }
}
