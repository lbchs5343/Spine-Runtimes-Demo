package g;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class fmj extends fsu {
    private static final fmj zzb;
    private gmb zzd = amo.f10475b;

    static {
        fmj fmjVar = new fmj();
        zzb = fmjVar;
        fsu.p(fmj.class, fmjVar);
    }

    public static void a(fmj fmjVar, ArrayList arrayList) {
        gmb gmbVar = fmjVar.zzd;
        if (!((bxh) gmbVar).f12380e) {
            int size = gmbVar.size();
            fmjVar.zzd = gmbVar.zzd(size + size);
        }
        List list = fmjVar.zzd;
        Charset charset = cua.f13515a;
        int size2 = arrayList.size();
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(list.size() + size2);
        } else if (list instanceof amo) {
            amo amoVar = (amo) list;
            int i = ((amo) list).f10476c + size2;
            int length = amoVar.f10477d.length;
            if (i > length) {
                if (length != 0) {
                    while (length < i) {
                        length = Math.max(((length * 3) / 2) + 1, 10);
                    }
                    amoVar.f10477d = Arrays.copyOf(amoVar.f10477d, length);
                } else {
                    amoVar.f10477d = new Object[Math.max(i, 10)];
                }
            }
        }
        int size3 = list.size();
        int size4 = arrayList.size();
        for (int i2 = 0; i2 < size4; i2++) {
            Object obj = arrayList.get(i2);
            if (obj == null) {
                String b2 = awf.b(list.size() - size3, "Element at index ", " is null.");
                int size5 = list.size();
                while (true) {
                    size5--;
                    if (size5 < size3) {
                        throw new NullPointerException(b2);
                    }
                    list.remove(size5);
                }
            } else {
                list.add(obj);
            }
        }
    }

    public static fwc b() {
        return (fwc) zzb.u();
    }

    @Override // g.fsu
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new hcu(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", qt.class});
        }
        if (i2 == 3) {
            return new fmj();
        }
        if (i2 == 4) {
            return new fwc(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
