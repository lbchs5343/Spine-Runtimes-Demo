package g;

/* loaded from: classes3.dex */
public final class kp implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f19557a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fqm f19558b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f19559c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f19560d;

    public /* synthetic */ kp(fqm fqmVar, String str, long j, int i) {
        this.f19559c = i;
        this.f19558b = fqmVar;
        this.f19560d = str;
        this.f19557a = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19559c) {
            case 0:
                fqm fqmVar = this.f19558b;
                fqmVar._e();
                String str = this.f19560d;
                ckd.bf(str);
                tl tlVar = fqmVar.f17248b;
                boolean isEmpty = tlVar.isEmpty();
                long j = this.f19557a;
                if (isEmpty) {
                    fqmVar.f17249c = j;
                }
                Integer num = (Integer) tlVar.get(str);
                if (num == null) {
                    if (tlVar.f11294g < 100) {
                        tlVar.put(str, 1);
                        fqmVar.f17247a.put(str, Long.valueOf(j));
                        break;
                    } else {
                        bgm bgmVar = ((cyg) fqmVar.z).z;
                        cyg.ak(bgmVar);
                        bgmVar.f11520g.h("Too many ads visible");
                        break;
                    }
                } else {
                    tlVar.put(str, Integer.valueOf(num.intValue() + 1));
                    break;
                }
            default:
                fqm fqmVar2 = this.f19558b;
                fqmVar2._e();
                tl tlVar2 = fqmVar2.f17247a;
                cyg cygVar = (cyg) fqmVar2.z;
                String str2 = this.f19560d;
                ckd.bf(str2);
                tl tlVar3 = fqmVar2.f17248b;
                Integer num2 = (Integer) tlVar3.get(str2);
                if (num2 == null) {
                    bgm bgmVar2 = cygVar.z;
                    cyg.ak(bgmVar2);
                    bgmVar2.f11518b.i(str2, "Call to endAdUnitExposure for unknown ad unit id");
                    break;
                } else {
                    bcm bcmVar = cygVar.h;
                    bgm bgmVar3 = cygVar.z;
                    cyg.aj(bcmVar);
                    ein u = bcmVar.u(false);
                    int intValue = num2.intValue() - 1;
                    if (intValue != 0) {
                        tlVar3.put(str2, Integer.valueOf(intValue));
                        break;
                    } else {
                        tlVar3.remove(str2);
                        Long l = (Long) tlVar2.get(str2);
                        long j2 = this.f19557a;
                        if (l == null) {
                            cyg.ak(bgmVar3);
                            bgmVar3.f11518b.h("First ad unit exposure time was never set");
                        } else {
                            long longValue = l.longValue();
                            tlVar2.remove(str2);
                            fqmVar2.h(str2, j2 - longValue, u);
                        }
                        if (tlVar3.isEmpty()) {
                            long j3 = fqmVar2.f17249c;
                            if (j3 != 0) {
                                fqmVar2.g(j2 - j3, u);
                                fqmVar2.f17249c = 0L;
                                break;
                            } else {
                                cyg.ak(bgmVar3);
                                bgmVar3.f11518b.h("First ad exposure time was never set");
                                break;
                            }
                        }
                    }
                }
                break;
        }
    }
}
