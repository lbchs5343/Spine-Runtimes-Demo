package g;

import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class ps extends avu implements bto {
    final /* synthetic */ cvw $arrayFactory;
    final /* synthetic */ dqx[] $flows;
    final /* synthetic */ fjs $this_combineInternal;
    final /* synthetic */ bnk $transform;
    int I$0;
    int I$1;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ps(dqx[] dqxVarArr, cvw cvwVar, bnk bnkVar, fjs fjsVar, bdp bdpVar) {
        super(2, bdpVar);
        this.$flows = dqxVarArr;
        this.$arrayFactory = cvwVar;
        this.$transform = bnkVar;
        this.$this_combineInternal = fjsVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x009d, code lost:
    
        if (r13 == r2) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ef, code lost:
    
        if (r13.b(r14, r10, r19) == r2) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x010b, code lost:
    
        if (r14.b(r15, r13, r19) == r2) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008b, code lost:
    
        if (r9 != 0) goto L19;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00ae A[LOOP_START, PHI: r9 r13
      0x00ae: PHI (r9v3 int) = (r9v2 int), (r9v4 int) binds: [B:16:0x00a9, B:37:?] A[DONT_GENERATE, DONT_INLINE]
      0x00ae: PHI (r13v4 g.eay) = (r13v3 g.eay), (r13v10 g.eay) binds: [B:16:0x00a9, B:37:?] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r3v6, types: [int] */
    /* JADX WARN: Type inference failed for: r3v8, types: [int] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ef -> B:10:0x008b). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x010b -> B:10:0x008b). Please report as a decompilation issue!!! */
    @Override // g.bry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(Object obj) {
        int length;
        Object[] objArr;
        byte[] bArr;
        bfl bflVar;
        byte b2;
        Object obj2;
        hy hyVar = ckd.f13014a;
        cxr cxrVar = cxr.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            eg.k(obj);
            hcc hccVar = (hcc) this.L$0;
            length = this.$flows.length;
            if (length != 0) {
                objArr = new Object[length];
                fuv.be(objArr, hyVar, 0, length);
                djo r = eg.r(length, null, 6);
                AtomicInteger atomicInteger = new AtomicInteger(length);
                for (int i2 = 0; i2 < length; i2++) {
                    baf.al(hccVar, null, null, new ehu(this.$flows, i2, atomicInteger, r, null), 3);
                }
                bArr = new byte[length];
                bflVar = r;
                b2 = 0;
            }
            return dgi.f14134a;
        }
        if (i == 1) {
            ?? r3 = this.I$1;
            length = this.I$0;
            byte[] bArr2 = (byte[]) this.L$2;
            bflVar = (bfl) this.L$1;
            Object[] objArr2 = (Object[]) this.L$0;
            eg.k(obj);
            obj2 = ((clw) obj).f13098b;
            b2 = r3;
            bArr = bArr2;
            objArr = objArr2;
            if (obj2 instanceof dmq) {
                obj2 = null;
            }
            eay eayVar = (eay) obj2;
            if (eayVar != null) {
                while (true) {
                    int i3 = eayVar.f15213a;
                    Object obj3 = objArr[i3];
                    objArr[i3] = eayVar.f15214b;
                    if (obj3 == hyVar) {
                        length--;
                    }
                    if (bArr[i3] != b2) {
                        bArr[i3] = b2;
                        Object h = bflVar.h();
                        if (h instanceof dmq) {
                            h = null;
                        }
                        eayVar = (eay) h;
                        if (eayVar != null) {
                        }
                    }
                    if (length == 0) {
                        Object[] objArr3 = (Object[]) this.$arrayFactory.invoke();
                        if (objArr3 == null) {
                            bnk bnkVar = this.$transform;
                            fjs fjsVar = this.$this_combineInternal;
                            this.L$0 = objArr;
                            this.L$1 = bflVar;
                            this.L$2 = bArr;
                            this.I$0 = length;
                            this.I$1 = b2;
                            this.label = 2;
                        } else {
                            fuv.bi(0, 0, 14, objArr, objArr3);
                            bnk bnkVar2 = this.$transform;
                            fjs fjsVar2 = this.$this_combineInternal;
                            this.L$0 = objArr;
                            this.L$1 = bflVar;
                            this.L$2 = bArr;
                            this.I$0 = length;
                            this.I$1 = b2;
                            this.label = 3;
                        }
                        if (obj2 instanceof dmq) {
                        }
                        eay eayVar2 = (eay) obj2;
                        if (eayVar2 != null) {
                        }
                    }
                }
                return cxrVar;
            }
            return dgi.f14134a;
        }
        if (i != 2 && i != 3) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ?? r32 = this.I$1;
        length = this.I$0;
        byte[] bArr3 = (byte[]) this.L$2;
        bflVar = (bfl) this.L$1;
        Object[] objArr4 = (Object[]) this.L$0;
        eg.k(obj);
        b2 = r32;
        bArr = bArr3;
        objArr = objArr4;
        b2 = (byte) (b2 + 1);
        this.L$0 = objArr;
        this.L$1 = bflVar;
        this.L$2 = bArr;
        this.I$0 = length;
        this.I$1 = b2;
        this.label = 1;
        obj2 = bflVar.g(this);
    }

    @Override // g.bto
    public final Object d(Object obj, Object obj2) {
        return ((ps) e((hcc) obj, (bdp) obj2)).a(dgi.f14134a);
    }

    @Override // g.bry
    public final bdp e(Object obj, bdp bdpVar) {
        ps psVar = new ps(this.$flows, this.$arrayFactory, this.$transform, this.$this_combineInternal, bdpVar);
        psVar.L$0 = obj;
        return psVar;
    }
}
