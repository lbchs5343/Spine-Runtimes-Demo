package com.bykv.vk.openvk.preload.geckox;

import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.openvk.preload.d.d;
import com.bykv.vk.openvk.preload.d.ia;
import com.bykv.vk.openvk.preload.d.ig;
import com.bykv.vk.openvk.preload.geckox.dq.dq.dq;
import com.bykv.vk.openvk.preload.geckox.ig.dq;
import com.bykv.vk.openvk.preload.geckox.p;
import com.bykv.vk.openvk.preload.geckox.s;
import com.bykv.vk.openvk.preload.geckox.s.iw;
import com.bykv.vk.openvk.preload.geckox.s.kk;
import com.bykv.vk.openvk.preload.geckox.s.ox;
import com.bykv.vk.openvk.preload.geckox.utils.mn;
import com.bytedance.sdk.openadsdk.api.plugin.PluginConstants;
import g.awf;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {

    /* renamed from: com.bykv.vk.openvk.preload.geckox.dq$dq, reason: collision with other inner class name */
    public static class C0014dq {
        private static dq dq = new dq();
    }

    private dq() {
    }

    public static dq dq(Context context) {
        s unused;
        s.f682d = context;
        if (s.dq == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(com.bytedance.sdk.openadsdk.api.plugin.d.d(s.f682d));
            s.dq = new File(awf.ad(sb, File.separator, "gecko"));
        }
        unused = s.dq.dq;
        return C0014dq.dq;
    }

    public static void dq(d dVar) {
        p.dq(dVar);
    }

    public static void dq(String str) {
        s.ox = str;
    }

    public com.bykv.vk.openvk.preload.ox.dq.d dq() {
        s unused;
        unused = s.dq.dq;
        return s.dq();
    }

    public void dq(long j, String str, com.bykv.vk.openvk.preload.geckox.q.dq dqVar, Set<String> set, com.bykv.vk.openvk.preload.geckox.mp.dq dqVar2, com.bykv.vk.openvk.preload.geckox.o.dq dqVar3) {
        s unused;
        unused = s.dq.dq;
        if (TextUtils.isEmpty(str)) {
            return;
        }
        p.dq dqVar4 = new p.dq(s.f682d);
        dqVar4.f671d = Arrays.asList("4ab312f7094810afa84659d3dc6cf0fe");
        dqVar4.ox = Arrays.asList("4ab312f7094810afa84659d3dc6cf0fe");
        dqVar4.kk = Long.valueOf(j);
        dqVar4.no = str;
        dqVar4.o = "9999999.0.0";
        dq.C0016dq c0016dq = new dq.C0016dq();
        c0016dq.dq = 20;
        com.bykv.vk.openvk.preload.geckox.dq.dq.d dVar = com.bykv.vk.openvk.preload.geckox.dq.dq.d.ox;
        if (dVar == null) {
            dVar = com.bykv.vk.openvk.preload.geckox.dq.dq.d.dq;
        }
        c0016dq.f641d = dVar;
        dqVar4.ia = new com.bykv.vk.openvk.preload.geckox.dq.dq.dq(c0016dq, (byte) 0);
        dqVar4.mp = s.dq;
        dqVar4.mn = false;
        dqVar4.ig = s.ox;
        dqVar4.iw = dqVar;
        dqVar4.dq = dqVar2;
        p pVar = new p(dqVar4, (byte) 0);
        List<String> list = pVar.s;
        if (list == null || list.isEmpty()) {
            throw new IllegalArgumentException("access key empty");
        }
        Context context = pVar.dq;
        if (context != null) {
            mn.dq = context;
        }
        ox oxVar = new ox(pVar);
        HashMap hashMap = new HashMap();
        LinkedList linkedList = new LinkedList();
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            linkedList.add(new dq.ox(it.next()));
        }
        hashMap.put("4ab312f7094810afa84659d3dc6cf0fe", linkedList);
        if (TextUtils.isEmpty("default")) {
            throw new IllegalArgumentException("groupType == null");
        }
        if (!oxVar.dq()) {
            throw new IllegalArgumentException("deployments keys not in local keys");
        }
        if (!oxVar.dq(hashMap)) {
            throw new IllegalArgumentException("target keys not in deployments keys");
        }
        p.d().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.ox.1

            /* renamed from: d */
            final /* synthetic */ com.bykv.vk.openvk.preload.geckox.o.dq f664d;
            final /* synthetic */ String dq;
            final /* synthetic */ Map ox = null;
            final /* synthetic */ Map p;

            public AnonymousClass1(String str2, com.bykv.vk.openvk.preload.geckox.o.dq dqVar32, Map hashMap2) {
                r2 = str2;
                r3 = dqVar32;
                r4 = hashMap2;
            }

            /* JADX WARN: Removed duplicated region for block: B:26:0x0677 A[Catch: all -> 0x068c, TryCatch #6 {all -> 0x068c, blocks: (B:24:0x0667, B:26:0x0677, B:30:0x067d, B:32:0x0687), top: B:23:0x0667 }] */
            /* JADX WARN: Removed duplicated region for block: B:47:0x0637  */
            /* JADX WARN: Removed duplicated region for block: B:49:0x063c  */
            /* JADX WARN: Removed duplicated region for block: B:55:0x0692  */
            /* JADX WARN: Removed duplicated region for block: B:57:0x0697  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public final void run() {
                Class<? extends com.bykv.vk.openvk.preload.d.p> cls;
                com.bykv.vk.openvk.preload.geckox.dq.dq.d dVar2;
                com.bykv.vk.openvk.preload.geckox.dq.dq.d dVar3;
                String str2;
                String str3;
                com.bykv.vk.openvk.preload.geckox.o.dq dqVar5;
                com.bykv.vk.openvk.preload.geckox.o.dq dqVar6;
                ox oxVar2;
                com.bykv.vk.openvk.preload.geckox.kk.dq dqVar7;
                com.bykv.vk.openvk.preload.geckox.o.dq dqVar8;
                File file;
                p pVar2;
                com.bykv.vk.openvk.preload.geckox.o.d dVar4;
                Map map;
                Map map2;
                String str4;
                ArrayList arrayList;
                AnonymousClass1 anonymousClass1 = this;
                com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "start check update...", r2);
                p pVar3 = ox.this.ox;
                com.bykv.vk.openvk.preload.geckox.dq.dq.dq dqVar9 = pVar3.mn;
                if (dqVar9 != null) {
                    dVar2 = dqVar9.f640d;
                    cls = com.bykv.vk.openvk.preload.geckox.s.mn.class;
                    dVar2.dq(dqVar9, pVar3.q, pVar3.s);
                } else {
                    cls = com.bykv.vk.openvk.preload.geckox.s.mn.class;
                    dVar2 = null;
                }
                try {
                    ox.this.ox.f669f = new JSONObject();
                    dqVar8 = r3;
                    ox oxVar3 = ox.this;
                    file = oxVar3.p;
                    dVar3 = dVar2;
                    try {
                        pVar2 = oxVar3.ox;
                        dVar4 = oxVar3.dq;
                        map = anonymousClass1.ox;
                        map2 = r4;
                        str4 = r2;
                        arrayList = new ArrayList();
                    } catch (Exception e2) {
                        e = e2;
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (Exception e3) {
                    e = e3;
                    dVar3 = dVar2;
                } catch (Throwable th2) {
                    th = th2;
                    dVar3 = dVar2;
                }
                try {
                    try {
                        ia.dq dq = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.s.class);
                        dq.ox = new Object[]{file, pVar2.iw};
                        dq.f578d = dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.s.class);
                        arrayList.add(dq.dq());
                        ia.dq dq2 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.ox.class);
                        dq2.ox = new Object[]{pVar2, map, map2, dqVar8, str4};
                        dq2.f578d = new com.bykv.vk.openvk.preload.d.d.d(new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.ia.dq.6

                            /* renamed from: d */
                            final /* synthetic */ p f646d;

                            public AnonymousClass6(p pVar22) {
                                r2 = pVar22;
                            }

                            @Override // com.bykv.vk.openvk.preload.d.d.dq
                            public final <T> void dq(d<T> dVar5, com.bykv.vk.openvk.preload.d.p pVar4) {
                                super.dq(dVar5, pVar4);
                                try {
                                    r2.f669f.put(pVar4.getClass().getSimpleName().concat("onStart"), "");
                                } catch (Throwable unused2) {
                                }
                            }

                            @Override // com.bykv.vk.openvk.preload.d.d.dq
                            public final <T> void dq(d<T> dVar5, com.bykv.vk.openvk.preload.d.p pVar4, Throwable th3) {
                                super.dq(dVar5, pVar4, th3);
                                dVar5.dq(ox.class);
                                try {
                                    r2.f669f.put(pVar4.getClass().getSimpleName().concat("onException"), th3.toString());
                                } catch (Throwable unused2) {
                                }
                            }

                            @Override // com.bykv.vk.openvk.preload.d.d.dq
                            public final <T> void ox(d<T> dVar5, com.bykv.vk.openvk.preload.d.p pVar4) {
                                super.ox(dVar5, pVar4);
                                List<com.bykv.vk.openvk.preload.geckox.ig.s> list2 = (List) dVar5.d(ox.class);
                                dVar5.dq(ox.class);
                                HashMap hashMap2 = new HashMap();
                                for (com.bykv.vk.openvk.preload.geckox.ig.s sVar : list2) {
                                    String dq3 = sVar.dq();
                                    List list3 = (List) hashMap2.get(dq3);
                                    if (list3 == null) {
                                        list3 = new ArrayList();
                                    }
                                    list3.add(sVar);
                                    hashMap2.put(dq3, list3);
                                }
                                try {
                                    r2.f669f.put(pVar4.getClass().getSimpleName() + "onEnd", "");
                                } catch (Throwable unused2) {
                                }
                            }

                            @Override // com.bykv.vk.openvk.preload.d.d.dq
                            public final <T> void ox(d<T> dVar5, com.bykv.vk.openvk.preload.d.p pVar4, Throwable th3) {
                                super.ox(dVar5, pVar4, th3);
                                try {
                                    r2.f669f.put(pVar4.getClass().getSimpleName().concat("onChainException"), th3.toString());
                                } catch (Throwable unused2) {
                                }
                            }
                        }, dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.ox.class));
                        arrayList.add(dq2.dq());
                        ia.dq dq3 = new ia.dq().dq(iw.class);
                        dq3.ox = new Object[]{p.dq()};
                        dq3.f578d = new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.ia.dq.1

                            /* renamed from: d */
                            final /* synthetic */ p f642d;

                            public AnonymousClass1(p pVar22) {
                                r2 = pVar22;
                            }

                            @Override // com.bykv.vk.openvk.preload.d.d.dq
                            public final <T> void d(d<T> dVar5, com.bykv.vk.openvk.preload.d.p pVar4) {
                                super.d(dVar5, pVar4);
                                try {
                                    r2.f669f.put(pVar4.getClass().getSimpleName().concat("onPipelineEnd"), "");
                                } catch (Throwable unused2) {
                                }
                            }

                            @Override // com.bykv.vk.openvk.preload.d.d.dq
                            public final <T> void dq(d<T> dVar5, com.bykv.vk.openvk.preload.d.p pVar4) {
                                super.dq(dVar5, pVar4);
                                try {
                                    r2.f669f.put(pVar4.getClass().getSimpleName().concat("onStart"), "");
                                } catch (Throwable unused2) {
                                }
                            }

                            @Override // com.bykv.vk.openvk.preload.d.d.dq
                            public final <T> void dq(d<T> dVar5, com.bykv.vk.openvk.preload.d.p pVar4, Throwable th3) {
                                super.dq(dVar5, pVar4, th3);
                                com.bykv.vk.openvk.preload.geckox.o.dq dqVar10 = com.bykv.vk.openvk.preload.geckox.o.dq.this;
                                if (dqVar10 != null) {
                                    dqVar10.dq(((com.bykv.vk.openvk.preload.geckox.ig.s) dVar5.d(iw.class)).s(), th3);
                                }
                                try {
                                    r2.f669f.put(pVar4.getClass().getSimpleName().concat("onException"), th3.toString());
                                } catch (Throwable unused2) {
                                }
                            }

                            @Override // com.bykv.vk.openvk.preload.d.d.dq
                            public final <T> void ox(d<T> dVar5, com.bykv.vk.openvk.preload.d.p pVar4) {
                                super.ox(dVar5, pVar4);
                                try {
                                    r2.f669f.put(pVar4.getClass().getSimpleName().concat("onEnd"), "");
                                } catch (Throwable unused2) {
                                }
                            }

                            @Override // com.bykv.vk.openvk.preload.d.d.dq
                            public final <T> void ox(d<T> dVar5, com.bykv.vk.openvk.preload.d.p pVar4, Throwable th3) {
                                super.ox(dVar5, pVar4, th3);
                                try {
                                    r2.f669f.put(pVar4.getClass().getSimpleName().concat("onChainException"), th3.toString());
                                } catch (Throwable unused2) {
                                }
                            }
                        };
                        arrayList.add(dq3.dq());
                        ig.d dVar5 = new ig.d();
                        ig.dq dq4 = dVar5.dq("branch_zip");
                        ig.d dVar6 = new ig.d();
                        ig.dq dq5 = dVar6.dq("patch");
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.ia.class).dq());
                        ia.dq dq6 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.d.d.ox.class);
                        dq6.ox = new Object[]{pVar22, file};
                        dq6.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.d(dqVar8, pVar22), dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.d.d.ox.class));
                        arrayList2.add(dq6.dq());
                        ia.dq dq7 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.d.d.d.class);
                        dq7.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.dq(dqVar8, pVar22), dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.d.d.d.class));
                        arrayList2.add(dq7.dq());
                        ia.dq dq8 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.d.d.p.class);
                        dq8.ox = new Object[]{pVar22};
                        dq8.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.dq(dqVar8, pVar22), dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.d.d.p.class));
                        arrayList2.add(dq8.dq());
                        ia.dq dq9 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.d.d.dq.class);
                        dq9.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.dq(dqVar8, pVar22), dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.d.d.dq.class));
                        arrayList2.add(dq9.dq());
                        ia.dq dq10 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.d.d.iw.class);
                        dq10.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.dq(dqVar8, pVar22), dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.d.d.iw.class));
                        arrayList2.add(dq10.dq());
                        ia.dq dq11 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.d.d.s.class);
                        dq11.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.dq(dqVar8));
                        arrayList2.add(dq11.dq());
                        dq5.dq(arrayList2);
                        ig.dq dq12 = dVar6.dq("full");
                        ArrayList arrayList3 = new ArrayList();
                        Class<? extends com.bykv.vk.openvk.preload.d.p> cls2 = cls;
                        arrayList3.add(new ia.dq().dq(cls2).dq());
                        ia.dq dq13 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.d.dq.d.class);
                        dq13.ox = new Object[]{pVar22, file};
                        dq13.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.d(dqVar8, pVar22), dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.d.dq.d.class));
                        arrayList3.add(dq13.dq());
                        ia.dq dq14 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.d.dq.dq.class);
                        dq14.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.dq(dqVar8, pVar22), dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.d.dq.dq.class));
                        arrayList3.add(dq14.dq());
                        ia.dq dq15 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.d.dq.p.class);
                        dq15.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.dq(dqVar8, pVar22), dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.d.dq.p.class));
                        arrayList3.add(dq15.dq());
                        ia.dq dq16 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.d.dq.ox.class);
                        dq16.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.dq(dqVar8));
                        arrayList3.add(dq16.dq());
                        dq12.dq(arrayList3);
                        ig.dq dq17 = dq4.dq(dVar6.dq(com.bykv.vk.openvk.preload.geckox.s.d.class));
                        ia.dq dq18 = new ia.dq().dq(com.bykv.vk.openvk.preload.d.iw.class);
                        dq18.f578d = com.bykv.vk.openvk.preload.geckox.ia.dq.dq(pVar22);
                        dq17.dq(dq18.dq());
                        ig.dq dq19 = dVar5.dq("branch_single_file");
                        ig.d dVar7 = new ig.d();
                        ig.dq dq20 = dVar7.dq("patch");
                        ArrayList arrayList4 = new ArrayList();
                        arrayList4.add(new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.ia.class).dq());
                        ia.dq dq21 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.dq.d.ox.class);
                        dq21.ox = new Object[]{pVar22, file};
                        dq21.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.d(dqVar8, pVar22), dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.dq.d.ox.class));
                        arrayList4.add(dq21.dq());
                        ia.dq dq22 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.dq.d.d.class);
                        dq22.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.dq(dqVar8, pVar22), dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.dq.d.d.class));
                        arrayList4.add(dq22.dq());
                        ia.dq dq23 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.dq.d.p.class);
                        dq23.ox = new Object[]{pVar22};
                        dq23.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.dq(dqVar8, pVar22), dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.dq.d.p.class));
                        arrayList4.add(dq23.dq());
                        ia.dq dq24 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.dq.d.dq.class);
                        dq24.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.dq(dqVar8, pVar22), dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.dq.d.dq.class));
                        arrayList4.add(dq24.dq());
                        ia.dq dq25 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.dq.d.s.class);
                        dq25.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.dq(dqVar8), dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.dq.d.s.class));
                        arrayList4.add(dq25.dq());
                        dq20.dq(arrayList4);
                        ig.dq dq26 = dVar7.dq("full");
                        ArrayList arrayList5 = new ArrayList();
                        arrayList5.add(new ia.dq().dq(cls2).dq());
                        ia.dq dq27 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.dq.dq.d.class);
                        dq27.ox = new Object[]{pVar22, file};
                        dq27.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.d(dqVar8, pVar22), dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.dq.dq.d.class));
                        arrayList5.add(dq27.dq());
                        ia.dq dq28 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.dq.dq.dq.class);
                        dq28.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.dq(dqVar8, pVar22), dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.dq.dq.dq.class));
                        arrayList5.add(dq28.dq());
                        ia.dq dq29 = new ia.dq().dq(com.bykv.vk.openvk.preload.geckox.s.dq.dq.ox.class);
                        dq29.f578d = new com.bykv.vk.openvk.preload.d.d.d(com.bykv.vk.openvk.preload.geckox.ia.dq.dq(dqVar8), dVar4.dq(com.bykv.vk.openvk.preload.geckox.s.dq.dq.ox.class));
                        arrayList5.add(dq29.dq());
                        dq26.dq(arrayList5);
                        ig.dq dq30 = dq19.dq(dVar7.dq(com.bykv.vk.openvk.preload.geckox.s.d.class));
                        ia.dq dq31 = new ia.dq().dq(com.bykv.vk.openvk.preload.d.iw.class);
                        dq31.f578d = com.bykv.vk.openvk.preload.geckox.ia.dq.dq(pVar22);
                        dq30.dq(dq31.dq());
                        ig.dq dq32 = dVar5.dq("branch_myarchive_file");
                        ig.d dVar8 = new ig.d();
                        ig.dq dq33 = dVar8.dq("patch");
                        List<ia> list2 = Collections.EMPTY_LIST;
                        dq33.dq(list2);
                        dVar8.dq("full").dq(list2);
                        ig.dq dq34 = dq32.dq(dVar8.dq(com.bykv.vk.openvk.preload.geckox.s.d.class));
                        ia.dq dq35 = new ia.dq().dq(com.bykv.vk.openvk.preload.d.iw.class);
                        dq35.f578d = com.bykv.vk.openvk.preload.geckox.ia.dq.dq(pVar22);
                        dq34.dq(dq35.dq());
                        arrayList.add(dVar5.dq(com.bykv.vk.openvk.preload.geckox.s.dq.class));
                        ia.dq dq36 = new ia.dq().dq(kk.class);
                        dq36.f578d = new com.bykv.vk.openvk.preload.d.d.dq() { // from class: com.bykv.vk.openvk.preload.geckox.ia.dq.2

                            /* renamed from: d */
                            final /* synthetic */ p f643d;

                            public AnonymousClass2(p pVar22) {
                                r2 = pVar22;
                            }

                            @Override // com.bykv.vk.openvk.preload.d.d.dq
                            public final <T> void d(d<T> dVar9, com.bykv.vk.openvk.preload.d.p pVar4) {
                                super.d(dVar9, pVar4);
                                Pair pair = (Pair) dVar9.dq(kk.class);
                                com.bykv.vk.openvk.preload.geckox.o.dq dqVar10 = com.bykv.vk.openvk.preload.geckox.o.dq.this;
                                if (dqVar10 != null) {
                                    dqVar10.dq((String) pair.first, ((Long) pair.second).longValue());
                                }
                            }

                            @Override // com.bykv.vk.openvk.preload.d.d.dq
                            public final <T> void dq(d<T> dVar9, com.bykv.vk.openvk.preload.d.p pVar4) {
                                super.dq(dVar9, pVar4);
                                try {
                                    r2.f669f.put(pVar4.getClass().getSimpleName().concat("onStart"), "");
                                } catch (Throwable unused2) {
                                }
                            }

                            @Override // com.bykv.vk.openvk.preload.d.d.dq
                            public final <T> void dq(d<T> dVar9, com.bykv.vk.openvk.preload.d.p pVar4, Throwable th3) {
                                super.dq(dVar9, pVar4, th3);
                                try {
                                    r2.f669f.put(pVar4.getClass().getSimpleName().concat("onException"), th3.toString());
                                } catch (Throwable unused2) {
                                }
                            }

                            @Override // com.bykv.vk.openvk.preload.d.d.dq
                            public final <T> void ox(d<T> dVar9, com.bykv.vk.openvk.preload.d.p pVar4) {
                                super.ox(dVar9, pVar4);
                                try {
                                    r2.f669f.put(pVar4.getClass().getSimpleName().concat("onEnd"), "");
                                } catch (Throwable unused2) {
                                }
                            }

                            @Override // com.bykv.vk.openvk.preload.d.d.dq
                            public final <T> void ox(d<T> dVar9, com.bykv.vk.openvk.preload.d.p pVar4, Throwable th3) {
                                super.ox(dVar9, pVar4, th3);
                                try {
                                    r2.f669f.put(pVar4.getClass().getSimpleName().concat("onChainException"), th3.toString());
                                } catch (Throwable unused2) {
                                }
                            }
                        };
                        arrayList.add(dq36.dq());
                        anonymousClass1 = this;
                        str3 = "gecko-debug-tag";
                        try {
                            com.bykv.vk.openvk.preload.geckox.no.d.dq(str3, "update finished", com.bykv.vk.openvk.preload.d.ox.dq(arrayList, null, null).dq((com.bykv.vk.openvk.preload.d.d) r2));
                            com.bykv.vk.openvk.preload.geckox.o.dq dqVar10 = r3;
                            if (dqVar10 != null) {
                                dqVar10.dq();
                            }
                            if (dVar3 != null) {
                                dVar3.dq();
                            }
                            p pVar4 = ox.this.ox;
                            pVar4.ox.dq("download_gecko_end", pVar4.f669f);
                            com.bykv.vk.openvk.preload.geckox.no.d.dq(str3, "all channel update finished");
                        } catch (Exception e4) {
                            e = e4;
                            str2 = "download_gecko_end";
                            try {
                                JSONObject jSONObject = new JSONObject();
                                jSONObject.put("success", false);
                                jSONObject.put("msg", e.toString());
                                jSONObject.put(PluginConstants.KEY_ERROR_CODE, 2);
                                ox.this.ox.f669f = jSONObject;
                            } catch (Throwable unused2) {
                            }
                            try {
                                com.bykv.vk.openvk.preload.geckox.no.d.dq(str3, "Gecko update failed:", e);
                                dqVar6 = r3;
                                if (dqVar6 != null) {
                                    dqVar6.dq();
                                }
                                if (dVar3 != null) {
                                    dVar3.dq();
                                }
                                p pVar5 = ox.this.ox;
                                pVar5.ox.dq(str2, pVar5.f669f);
                                com.bykv.vk.openvk.preload.geckox.no.d.dq(str3, "all channel update finished");
                                oxVar2 = ox.this;
                                ArrayList arrayList6 = new ArrayList();
                                arrayList6.addAll(oxVar2.ox.s);
                                String dq37 = com.bykv.vk.openvk.preload.geckox.p.d.dq().dq.dq(new com.bykv.vk.openvk.preload.geckox.kk.dq.dq(arrayList6));
                                dqVar7 = oxVar2.ox.f668d;
                                if (dqVar7 == null) {
                                }
                                oxVar2.f663d.add(dq37);
                                return;
                            } catch (Throwable th3) {
                                th = th3;
                                dqVar5 = r3;
                                if (dqVar5 != null) {
                                    dqVar5.dq();
                                }
                                if (dVar3 != null) {
                                    dVar3.dq();
                                }
                                p pVar6 = ox.this.ox;
                                pVar6.ox.dq(str2, pVar6.f669f);
                                com.bykv.vk.openvk.preload.geckox.no.d.dq(str3, "all channel update finished");
                                throw th;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            str2 = "download_gecko_end";
                            dqVar5 = r3;
                            if (dqVar5 != null) {
                            }
                            if (dVar3 != null) {
                            }
                            p pVar62 = ox.this.ox;
                            pVar62.ox.dq(str2, pVar62.f669f);
                            com.bykv.vk.openvk.preload.geckox.no.d.dq(str3, "all channel update finished");
                            throw th;
                        }
                    } catch (Exception e5) {
                        e = e5;
                        anonymousClass1 = this;
                        str2 = "download_gecko_end";
                        str3 = "gecko-debug-tag";
                        JSONObject jSONObject2 = new JSONObject();
                        jSONObject2.put("success", false);
                        jSONObject2.put("msg", e.toString());
                        jSONObject2.put(PluginConstants.KEY_ERROR_CODE, 2);
                        ox.this.ox.f669f = jSONObject2;
                        com.bykv.vk.openvk.preload.geckox.no.d.dq(str3, "Gecko update failed:", e);
                        dqVar6 = r3;
                        if (dqVar6 != null) {
                        }
                        if (dVar3 != null) {
                        }
                        p pVar52 = ox.this.ox;
                        pVar52.ox.dq(str2, pVar52.f669f);
                        com.bykv.vk.openvk.preload.geckox.no.d.dq(str3, "all channel update finished");
                        oxVar2 = ox.this;
                        ArrayList arrayList62 = new ArrayList();
                        arrayList62.addAll(oxVar2.ox.s);
                        String dq372 = com.bykv.vk.openvk.preload.geckox.p.d.dq().dq.dq(new com.bykv.vk.openvk.preload.geckox.kk.dq.dq(arrayList62));
                        dqVar7 = oxVar2.ox.f668d;
                        if (dqVar7 == null) {
                        }
                        oxVar2.f663d.add(dq372);
                        return;
                    } catch (Throwable th5) {
                        th = th5;
                        anonymousClass1 = this;
                        str2 = "download_gecko_end";
                        str3 = "gecko-debug-tag";
                        dqVar5 = r3;
                        if (dqVar5 != null) {
                        }
                        if (dVar3 != null) {
                        }
                        p pVar622 = ox.this.ox;
                        pVar622.ox.dq(str2, pVar622.f669f);
                        com.bykv.vk.openvk.preload.geckox.no.d.dq(str3, "all channel update finished");
                        throw th;
                    }
                    String dq3722 = com.bykv.vk.openvk.preload.geckox.p.d.dq().dq.dq(new com.bykv.vk.openvk.preload.geckox.kk.dq.dq(arrayList62));
                    dqVar7 = oxVar2.ox.f668d;
                    if (!(dqVar7 == null && dqVar7.dq()) && oxVar2.f663d.size() < 10) {
                        oxVar2.f663d.add(dq3722);
                        return;
                    }
                    return;
                } catch (Throwable unused3) {
                    return;
                }
                oxVar2 = ox.this;
                ArrayList arrayList622 = new ArrayList();
                arrayList622.addAll(oxVar2.ox.s);
            }
        });
    }
}
