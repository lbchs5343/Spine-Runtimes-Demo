package g;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class ede extends pj {
    static {
        dsr.k(ede.class);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00d3 A[Catch: Exception -> 0x0026, TRY_LEAVE, TryCatch #0 {Exception -> 0x0026, blocks: (B:3:0x0007, B:5:0x0011, B:6:0x0018, B:8:0x001b, B:10:0x0029, B:11:0x0035, B:13:0x003b, B:36:0x0047, B:16:0x0063, B:34:0x0067, B:18:0x0082, B:21:0x008c, B:38:0x00a9, B:40:0x00ae, B:45:0x00d3, B:46:0x00ba, B:49:0x00c5, B:52:0x00cc), top: B:2:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(hed hedVar, hed hedVar2, fmz fmzVar, fza fzaVar, hdc hdcVar) {
        boolean z;
        eek eekVar = fmzVar.f17057b;
        eek _o = eekVar._o();
        boolean z2 = false;
        try {
            if (!hedVar2.al.f11075c.isEmpty()) {
                int i = hedVar2.af;
                gsh[] gshVarArr = new gsh[i];
                int[] iArr = fmzVar.f17058f;
                for (int i2 = 0; i2 < iArr.length; i2++) {
                    gshVarArr[iArr[i2]] = hdcVar.j(i2);
                }
                ArrayList arrayList = new ArrayList();
                _o.h(arrayList);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    gks gksVar = (gks) it.next();
                    int i3 = gksVar.f18327e;
                    if (i3 >= i) {
                        hedVar.bu("Unknown register number '" + gksVar + "' in method call: " + hedVar2);
                        break;
                    }
                    gsh gshVar = gshVarArr[i3];
                    if (gshVar == null) {
                        hedVar.bu("Not passed register '" + gksVar + "' in method call: " + hedVar2);
                        break;
                    }
                    if (!_o.f(gksVar, gshVar.b())) {
                        hedVar.bu("Failed to replace arg " + gksVar + " for method inline: " + hedVar2);
                        break;
                    }
                }
            }
            gks gksVar2 = hdcVar.ai;
            if (gksVar2 != null) {
                _o.ax(gksVar2.b());
            } else {
                if (gksVar2 == null) {
                    if (!hdcVar.l.g(csv.WRAPPED) && eekVar.ah != hay.IPUT) {
                        z = !hedVar2.bg();
                        if (z) {
                            gks bm = hedVar.bm(hedVar2.aw);
                            bm.c("unused");
                            _o.ax(bm);
                        }
                    }
                }
                z = false;
                if (z) {
                }
            }
            z2 = true;
        } catch (Exception e2) {
            hedVar.bt("Method inline failed with exception", e2);
        }
        if (z2) {
            ebp ebpVar = (ebp) _o.l.k(acq.j);
            if (ffb.bw(hedVar, fzaVar, hdcVar, _o)) {
                if (ebpVar != null) {
                    _o.m(ebpVar);
                }
                ArrayList arrayList2 = new ArrayList(Collections.unmodifiableList(hedVar2.au));
                arrayList2.remove(hedVar);
                hedVar2.bh(arrayList2);
                eekVar._be(new esv(this, hedVar, hedVar2));
                return;
            }
        }
        hedVar.bu("Failed to inline method: " + hedVar2);
        fpd.k(hedVar, _o);
        hdcVar._bs();
    }

    @Override // g.pj
    public final void j(hed hedVar) {
        hed hedVar2;
        if (hedVar.ar) {
            return;
        }
        for (fza fzaVar : hedVar.ak) {
            Iterator it = fzaVar.ac.iterator();
            while (it.hasNext()) {
                eek eekVar = (eek) it.next();
                if (eekVar.ah == hay.INVOKE) {
                    hdc hdcVar = (hdc) eekVar;
                    ebp ebpVar = (ebp) hdcVar.l.k(acq.j);
                    if (ebpVar instanceof hed) {
                        hed hedVar3 = (hed) ebpVar;
                        try {
                            fmz w = eak.w(hedVar3);
                            if (w == null) {
                                hedVar.bw("Class process forced to load method for inline: " + hedVar3);
                                hedVar.am.f12631ab.v.d(hedVar3.am);
                                w = eak.w(hedVar3);
                                if (w == null) {
                                    hedVar.bu("Failed to check method for inline after forced process" + hedVar3);
                                }
                            }
                            if (!(w.f17057b == null)) {
                                hedVar2 = hedVar;
                                a(hedVar2, hedVar3, w, fzaVar, hdcVar);
                                hedVar = hedVar2;
                            }
                        } catch (Exception e2) {
                            throw new gck("Failed to process method for inline: " + hedVar3, e2);
                        }
                    }
                }
                hedVar2 = hedVar;
                hedVar = hedVar2;
            }
        }
    }
}
