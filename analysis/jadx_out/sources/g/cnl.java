package g;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final /* synthetic */ class cnl implements bto {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13175a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f13176b;

    public /* synthetic */ cnl(int i, Object obj) {
        this.f13175a = i;
        this.f13176b = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    @Override // g.bto
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object d(Object obj, Object obj2) {
        int i;
        Object obj3;
        ger gerVar;
        Object obj4;
        switch (this.f13175a) {
            case 0:
                char[] cArr = (char[]) this.f13176b;
                CharSequence charSequence = (CharSequence) obj;
                int intValue = ((Integer) obj2).intValue();
                bff.p(charSequence, "$this$DelimitedRangesSequence");
                int bi = dcv.bi(charSequence, cArr, intValue, false);
                if (bi < 0) {
                    return null;
                }
                return new ger(Integer.valueOf(bi), 1);
            default:
                List list = (List) this.f13176b;
                CharSequence charSequence2 = (CharSequence) obj;
                int intValue2 = ((Integer) obj2).intValue();
                bff.p(charSequence2, "$this$DelimitedRangesSequence");
                if (list.size() == 1) {
                    int size = list.size();
                    if (size == 0) {
                        throw new NoSuchElementException("List is empty.");
                    }
                    if (size != 1) {
                        throw new IllegalArgumentException("List has more than one element.");
                    }
                    String str = (String) list.get(0);
                    int bm = dcv.bm(charSequence2, str, intValue2, 4);
                    if (bm >= 0) {
                        gerVar = new ger(Integer.valueOf(bm), str);
                        if (gerVar == null) {
                            return new ger(gerVar.d(), Integer.valueOf(((String) gerVar.a()).length()));
                        }
                        return null;
                    }
                    gerVar = null;
                    if (gerVar == null) {
                    }
                } else {
                    if (intValue2 < 0) {
                        intValue2 = 0;
                    }
                    gex gexVar = new gex(intValue2, charSequence2.length(), 1);
                    boolean z = charSequence2 instanceof String;
                    int i2 = gexVar.f17255a;
                    int i3 = gexVar.f17257c;
                    if (z) {
                        if ((i2 > 0 && intValue2 <= i3) || (i2 < 0 && i3 <= intValue2)) {
                            int i4 = intValue2;
                            while (true) {
                                Iterator it = list.iterator();
                                while (true) {
                                    if (it.hasNext()) {
                                        obj4 = it.next();
                                        String str2 = (String) obj4;
                                        if (dmc.ca(0, i4, str2.length(), str2, (String) charSequence2, false)) {
                                        }
                                    } else {
                                        obj4 = null;
                                    }
                                }
                                String str3 = (String) obj4;
                                if (str3 != null) {
                                    gerVar = new ger(Integer.valueOf(i4), str3);
                                } else if (i4 != i3) {
                                    i4 += i2;
                                }
                            }
                            if (gerVar == null) {
                            }
                        }
                        gerVar = null;
                        if (gerVar == null) {
                        }
                    } else {
                        if ((i2 > 0 && intValue2 <= i3) || (i2 < 0 && i3 <= intValue2)) {
                            int i5 = intValue2;
                            while (true) {
                                Iterator it2 = list.iterator();
                                while (true) {
                                    if (it2.hasNext()) {
                                        obj3 = it2.next();
                                        String str4 = (String) obj3;
                                        i = i3;
                                        if (!dcv.bf(str4, 0, charSequence2, i5, str4.length(), false)) {
                                            i3 = i;
                                        }
                                    } else {
                                        i = i3;
                                        obj3 = null;
                                    }
                                }
                                String str5 = (String) obj3;
                                if (str5 != null) {
                                    gerVar = new ger(Integer.valueOf(i5), str5);
                                } else if (i5 != i) {
                                    i5 += i2;
                                    i3 = i;
                                }
                            }
                            if (gerVar == null) {
                            }
                        }
                        gerVar = null;
                        if (gerVar == null) {
                        }
                    }
                }
        }
    }
}
