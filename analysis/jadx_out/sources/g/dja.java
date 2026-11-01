package g;

import java.util.Deque;
import java.util.HashMap;
import java.util.LinkedList;

/* loaded from: classes.dex */
public final class dja extends ckz {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f14265c;

    public /* synthetic */ dja(int i) {
        this.f14265c = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:125:0x01b9, code lost:
    
        if (r0.dq() != g.euc.dq) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x01bb, code lost:
    
        r0 = (g.bmf) r0;
        r1 = new java.util.LinkedList();
        r2 = new java.util.LinkedList();
        r11 = r11.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x01cf, code lost:
    
        if (r11.hasNext() == false) goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x01d1, code lost:
    
        r3 = (g.faq) r11.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x01dd, code lost:
    
        if (r3.dq() != g.abo.COMMA) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x01ea, code lost:
    
        r2.addLast(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x01df, code lost:
    
        r1.add(g.dyd.bb(r2, r8, r9));
        r2.clear();
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x01f2, code lost:
    
        if (r2.isEmpty() != false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x01f4, code lost:
    
        r1.add(g.dyd.bb(r2, r8, r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x01fb, code lost:
    
        r0.f11818a = (g.faq[]) r1.toArray(new g.faq[r1.size()]);
        r8 = r9 + 1;
        r10.push(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:?, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x020f, code lost:
    
        r10.push(g.dyd.bb(r11, r8, r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x0218, code lost:
    
        return r9 + 1;
     */
    @Override // g.ckz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int b(String str, int i, Deque deque, dbf dbfVar) {
        boolean p;
        char a2;
        boolean z = false;
        switch (this.f14265c) {
            case 0:
                if ('\'' != ckz.a(i, str)) {
                    return dbfVar.o(str, i, deque);
                }
                int i2 = i + 1;
                int length = str.length();
                int i3 = i2;
                while (i3 < length && ckz.a(i3, str) != '\'') {
                    i3++;
                }
                if (ckz.a(i3, str) != '\'') {
                    throw new dwb(tn.x("String expression not surrounded by ',problem area:", str.substring(i)));
                }
                deque.push(new doy(str.substring(i2, i3), 1));
                return i3 + 1;
            case 1:
                if (',' != ckz.a(i, str)) {
                    return dbfVar.o(str, i, deque);
                }
                deque.push(new dzd(abo.COMMA, 1));
                return i + 1;
            case 2:
                char a3 = ckz.a(i, str);
                if ('+' != a3 && '-' != a3 && '*' != a3 && '/' != a3 && '%' != a3 && '=' != a3 && '>' != a3 && '<' != a3 && '!' != a3 && '&' != a3 && '|' != a3 && '?' != a3 && ':' != a3) {
                    return dbfVar.o(str, i, deque);
                }
                int i4 = i + 1;
                String str2 = new String(new char[]{ckz.a(i, str), ckz.a(i4, str)});
                HashMap hashMap = ekx.f15718b;
                if (((ekx) hashMap.get(str2)) != null) {
                    deque.push(new dzd((ekx) hashMap.get(str2), 0));
                    return i + 2;
                }
                String valueOf = String.valueOf(ckz.a(i, str));
                if (((ekx) hashMap.get(valueOf)) != null) {
                    deque.push(new dzd((ekx) hashMap.get(valueOf), 0));
                    return i4;
                }
                StringBuilder p2 = awf.p("Unrecognized:", valueOf, "examine:");
                p2.append(str.substring(0, i));
                throw new IllegalArgumentException(p2.toString());
            case 3:
                if (')' != ckz.a(i, str)) {
                    return dbfVar.o(str, i, deque);
                }
                LinkedList linkedList = new LinkedList();
                while (true) {
                    faq faqVar = (faq) deque.pollFirst();
                    if (faqVar != null && faqVar.dq() != euc.dq && faqVar.dq() != abo.LEFT_PAREN) {
                        linkedList.addFirst(faqVar);
                    }
                }
                throw new IllegalArgumentException(str.substring(0, i));
            case 4:
                if ('-' == ckz.a(i, str)) {
                    if (deque.peek() != null) {
                        axb dq = ((faq) deque.peek()).dq();
                        ekx ekxVar = ekx.dq;
                        if (!(dq instanceof ekx)) {
                            p = false;
                        }
                    }
                    if (!fso.p(ckz.a(i + 1, str))) {
                        throw new IllegalArgumentException("Unrecognized - symbol, not a negative number or operator, problem range:" + str.substring(0, i));
                    }
                    p = true;
                } else {
                    p = fso.p(ckz.a(i, str));
                }
                if (!p) {
                    return dbfVar.o(str, i, deque);
                }
                int i5 = ckz.a(i, str) == '-' ? i + 1 : i;
                while (true) {
                    a2 = ckz.a(i5, str);
                    if (fso.p(a2) || (!z && a2 == '.')) {
                        i5++;
                        if (a2 == '.') {
                            z = true;
                        }
                    }
                }
                if (a2 == '.') {
                    throw new IllegalArgumentException("Illegal negative number format, problem interval:" + str.substring(i, i5));
                }
                String substring = str.substring(i, i5);
                dzd dzdVar = new dzd();
                if (substring.indexOf(46) >= 0) {
                    Float valueOf2 = Float.valueOf(substring);
                    dzdVar.f15116b = valueOf2;
                    if (Float.isInfinite(valueOf2.floatValue())) {
                        dzdVar.f15116b = Double.valueOf(substring);
                    }
                } else {
                    try {
                        dzdVar.f15116b = Integer.valueOf(substring);
                    } catch (NumberFormatException unused) {
                        dzdVar.f15116b = Long.valueOf(substring);
                    }
                }
                deque.push(dzdVar);
                return i5;
            case 5:
                break;
            case 6:
                if (!fso.az(ckz.a(i, str))) {
                    return dbfVar.o(str, i, deque);
                }
                int i6 = 0;
                while (true) {
                    int i7 = i6 + i;
                    char a4 = ckz.a(i7, str);
                    if (!fso.az(a4) && !fso.p(a4) && '.' != a4 && '[' != a4 && ']' != a4 && '_' != a4 && '-' != a4) {
                        String substring2 = str.substring(i, i7);
                        if (((dvr) dvr.f14896a.get(substring2.toLowerCase())) != null) {
                            deque.push(new dzd(substring2));
                        } else {
                            deque.push(new doy(substring2, 0));
                        }
                        return i7;
                    }
                    i6++;
                }
                break;
            case 7:
                if ('(' != ckz.a(i, str)) {
                    return dbfVar.o(str, i, deque);
                }
                deque.push(new dzd(abo.LEFT_PAREN, 1));
                return i + 1;
            default:
                int i8 = i;
                while (true) {
                    char a5 = ckz.a(i8, str);
                    if (!fso.az(a5) && !fso.p(a5)) {
                        if (a5 != '(') {
                            return dbfVar.o(str, i, deque);
                        }
                        String substring3 = str.substring(i, i8);
                        bmf bmfVar = new bmf();
                        bmfVar.f11819b = substring3;
                        deque.push(bmfVar);
                        return i8 + 1;
                    }
                    i8++;
                }
                break;
        }
        while (ckz.a(i, str) == ' ') {
            i++;
        }
        return dbfVar.o(str, i, deque);
    }
}
