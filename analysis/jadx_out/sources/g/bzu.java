package g;

import j$.lang.Iterable;
import j$.util.Collection;
import j$.util.stream.Collectors;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public abstract class bzu {

    /* renamed from: a, reason: collision with root package name */
    public static final Pattern f12528a = Pattern.compile("\\R");

    public static void b(eos eosVar, afa afaVar, String str) {
        ((grs) eosVar).ag();
        gmc gmcVar = gmc.BLOCK_CONDENSED;
        String str2 = afaVar.name() + ": " + str;
        e(eosVar, "", gmcVar.d());
        e(eosVar, gmcVar.c(), str2);
        e(eosVar, "", gmcVar.b());
    }

    public static void c(eos eosVar, ebh ebhVar, String str) {
        afa afaVar = afa.INFO;
        if (ebhVar.bx(afaVar)) {
            ((grs) eosVar).ag();
            gmc gmcVar = gmc.BLOCK_CONDENSED;
            e(eosVar, "", gmcVar.d());
            eosVar.d(afaVar.name()).d(": ");
            eosVar.d("renamed from: ").d(str);
            awl awlVar = (awl) ebhVar.l.k(acq.ad);
            if (awlVar != null) {
                eosVar.d(", reason: ").d(awlVar.f10974a);
            }
            e(eosVar, "", gmcVar.b());
        }
    }

    public static void d(eos eosVar, ebh ebhVar, epk epkVar) {
        if (epkVar != null && ebhVar.bx(afa.USER_ONLY)) {
            boolean z = epkVar instanceof gut;
            Iterator it = ((lh) epkVar).l.e(acq.u).iterator();
            if (it.hasNext()) {
                gsx gsxVar = (gsx) it.next();
                if (z) {
                    ((grs) eosVar).ag();
                } else {
                    eosVar.a(' ');
                }
                gsxVar.getClass();
                throw null;
            }
        }
    }

    public static void e(eos eosVar, String str, String str2) {
        String[] split = f12528a.split(str2);
        int length = split.length;
        if (length == 0) {
            return;
        }
        eosVar.d(split[0]);
        for (int i = 1; i < length; i++) {
            ((grs) eosVar).ae(str);
            eosVar.d(split[i]);
        }
    }

    public static void f(eos eosVar, ebh ebhVar) {
        bnz bnzVar = (bnz) ebhVar.l.k(acq.bk);
        if (bnzVar != null) {
            afa afaVar = ebhVar.a().i.aq;
            Iterable.b.forEach((afaVar == afa.NONE || afaVar == afa.USER_ONLY) ? Collections.EMPTY_LIST : (List) Collection.b.stream(bnzVar.f11900a.entrySet()).filter(new egl(4, afaVar)).flatMap(new gpn(4)).sorted().collect(Collectors.toList()), new hf(eosVar, 0));
        }
        d(eosVar, ebhVar, ebhVar);
    }

    public static void g(eos eosVar, ebh ebhVar) {
        if (ebhVar.bx(afa.ERROR)) {
            List e2 = ebhVar.l.e(acq.af);
            if (e2.isEmpty()) {
                return;
            }
            Collection.b.stream(e2).distinct().sorted().forEach(new hf(eosVar, 1));
        }
    }
}
