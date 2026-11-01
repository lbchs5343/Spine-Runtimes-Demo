package g;

import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class cir {
    protected int zzb;

    public static void y(Iterable iterable, List list) {
        Charset charset = dhz.f14209a;
        iterable.getClass();
        if (iterable instanceof guu) {
            List zzh = ((guu) iterable).zzh();
            guu guuVar = (guu) list;
            int size = list.size();
            for (Object obj : zzh) {
                if (obj == null) {
                    String str = "Element at index " + (guuVar.size() - size) + " is null.";
                    int size2 = guuVar.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            throw new NullPointerException(str);
                        }
                        guuVar.remove(size2);
                    }
                } else if (obj instanceof cyb) {
                    guuVar.b((cyb) obj);
                } else {
                    guuVar.add((String) obj);
                }
            }
            return;
        }
        if (iterable instanceof fqj) {
            list.addAll((Collection) iterable);
            return;
        }
        if ((list instanceof ArrayList) && (iterable instanceof Collection)) {
            ((ArrayList) list).ensureCapacity(((Collection) iterable).size() + list.size());
        }
        int size3 = list.size();
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                String str2 = "Element at index " + (list.size() - size3) + " is null.";
                int size4 = list.size();
                while (true) {
                    size4--;
                    if (size4 < size3) {
                        throw new NullPointerException(str2);
                    }
                    list.remove(size4);
                }
            } else {
                list.add(obj2);
            }
        }
    }

    public abstract int aa();

    public final byte[] z() {
        try {
            int aa = aa();
            byte[] bArr = new byte[aa];
            p pVar = new p(bArr, aa);
            cys cysVar = (cys) this;
            ciw d2 = auv.f10895a.d(cysVar.getClass());
            aoy aoyVar = pVar.f19791f;
            if (aoyVar == null) {
                aoyVar = new aoy();
                Charset charset = dhz.f14209a;
                aoyVar.h = pVar;
                pVar.f19791f = aoyVar;
            }
            d2.e(cysVar, aoyVar);
            if (aa - pVar.f19790e == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e2) {
            throw new RuntimeException(tn.ad("Serializing ", getClass().getName(), " to a byte array threw an IOException (should never happen)."), e2);
        }
    }
}
