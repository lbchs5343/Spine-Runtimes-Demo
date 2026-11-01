package g;

import android.database.sqlite.SQLiteDatabase;
import androidx.work.impl.WorkDatabase_Impl;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class fuf extends avu implements bto {
    final /* synthetic */ Callable<Object> $callable;
    final /* synthetic */ gac $db;
    final /* synthetic */ aol $observer;
    final /* synthetic */ bfl $observerChannel;
    final /* synthetic */ bfl $resultChannel;
    Object L$0;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fuf(gac gacVar, aol aolVar, bfl bflVar, Callable callable, bfl bflVar2, bdp bdpVar) {
        super(2, bdpVar);
        this.$db = gacVar;
        this.$observer = aolVar;
        this.$observerChannel = bflVar;
        this.$callable = callable;
        this.$resultChannel = bflVar2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x014f, code lost:
    
        if (r5.d(r3, r16) == r0) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x013b A[Catch: all -> 0x0018, TRY_LEAVE, TryCatch #1 {all -> 0x0018, blocks: (B:7:0x0012, B:9:0x0128, B:14:0x0133, B:16:0x013b, B:24:0x0027, B:61:0x0122), top: B:2:0x0008 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0152  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x014f -> B:9:0x0128). Please report as a decompilation issue!!! */
    @Override // g.bry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Object obj) {
        Object obj2;
        gyp gypVar;
        blg it;
        WorkDatabase_Impl workDatabase_Impl;
        crd crdVar;
        Object obj3;
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        try {
            if (i == 0) {
                eg.k(obj);
                dbe dbeVar = this.$db.x;
                aol aolVar = this.$observer;
                dbeVar.getClass();
                bff.p(aolVar, "observer");
                String[] strArr = aolVar.f10575a;
                HashMap hashMap = dbeVar.m;
                dra draVar = new dra();
                for (String str : strArr) {
                    Locale locale = Locale.US;
                    bff.e(locale, "US");
                    String lowerCase = str.toLowerCase(locale);
                    bff.e(lowerCase, "this as java.lang.String).toLowerCase(locale)");
                    if (hashMap.containsKey(lowerCase)) {
                        String lowerCase2 = str.toLowerCase(locale);
                        bff.e(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                        Object obj4 = hashMap.get(lowerCase2);
                        bff.d(obj4);
                        draVar.addAll((Collection) obj4);
                    } else {
                        draVar.add(str);
                    }
                }
                String[] strArr2 = (String[]) draVar.c().toArray(new String[0]);
                ArrayList arrayList = new ArrayList(strArr2.length);
                for (String str2 : strArr2) {
                    LinkedHashMap linkedHashMap = dbeVar.f13911d;
                    Locale locale2 = Locale.US;
                    bff.e(locale2, "US");
                    String lowerCase3 = str2.toLowerCase(locale2);
                    bff.e(lowerCase3, "this as java.lang.String).toLowerCase(locale)");
                    Integer num = (Integer) linkedHashMap.get(lowerCase3);
                    if (num == null) {
                        throw new IllegalArgumentException("There is no table with name ".concat(str2));
                    }
                    arrayList.add(num);
                }
                int[] bi = gsv.bi(arrayList);
                gyp gypVar2 = new gyp(aolVar, bi, strArr2);
                synchronized (dbeVar.l) {
                    cfx cfxVar = dbeVar.l;
                    frv b2 = cfxVar.b(aolVar);
                    if (b2 != null) {
                        obj2 = b2.f17315d;
                    } else {
                        frv frvVar = new frv(aolVar, gypVar2);
                        cfxVar.f12803e++;
                        frv frvVar2 = cfxVar.f12805g;
                        if (frvVar2 == null) {
                            cfxVar.f12804f = frvVar;
                            cfxVar.f12805g = frvVar;
                        } else {
                            frvVar2.f17312a = frvVar;
                            frvVar.f17313b = frvVar2;
                            cfxVar.f12805g = frvVar;
                        }
                        obj2 = null;
                    }
                    gypVar = (gyp) obj2;
                }
                if (gypVar == null && dbeVar.j.f(Arrays.copyOf(bi, bi.length)) && (crdVar = (workDatabase_Impl = dbeVar.f13914g).y) != null && ((SQLiteDatabase) crdVar.f13370d).isOpen()) {
                    dbeVar.o(workDatabase_Impl.ao().i());
                }
                it = this.$observerChannel.iterator();
            } else if (i == 1) {
                it = (blg) this.L$0;
                eg.k(obj);
                obj3 = obj;
                if (((Boolean) obj3).booleanValue()) {
                    this.$db.x.q(this.$observer);
                    return dgi.f14134a;
                }
                it.f();
                Object call = this.$callable.call();
                bfl bflVar = this.$resultChannel;
                this.L$0 = it;
                this.label = 2;
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (blg) this.L$0;
                eg.k(obj);
            }
            this.L$0 = it;
            this.label = 1;
            obj3 = it.e(this);
            if (obj3 == cxrVar) {
                return cxrVar;
            }
            if (((Boolean) obj3).booleanValue()) {
            }
        } catch (Throwable th) {
            this.$db.x.q(this.$observer);
            throw th;
        }
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((fuf) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        return new fuf(this.$db, this.$observer, this.$observerChannel, this.$callable, this.$resultChannel, bdpVar);
    }
}
