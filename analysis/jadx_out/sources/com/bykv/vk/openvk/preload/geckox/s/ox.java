package com.bykv.vk.openvk.preload.geckox.s;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.ig.dq;
import g.awf;
import java.io.File;
import java.io.FileFilter;
import java.io.StringReader;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class ox extends com.bykv.vk.openvk.preload.d.p<Map<String, List<Pair<String, Long>>>, List<com.bykv.vk.openvk.preload.geckox.ig.s>> {
    private Map<String, Map<String, Object>> ia;
    private com.bykv.vk.openvk.preload.geckox.q.dq.ox ig = new com.bykv.vk.openvk.preload.geckox.q.dq.ox();
    private Map<String, List<dq.ox>> kk;
    private com.bykv.vk.openvk.preload.geckox.p mn;
    private String no;
    private com.bykv.vk.openvk.preload.geckox.o.dq o;

    public static class d extends RuntimeException {
        public d(String str, Throwable th) {
            super(str, th);
        }
    }

    public static class dq extends RuntimeException {
        public dq(String str) {
            super(str);
        }
    }

    /* renamed from: com.bykv.vk.openvk.preload.geckox.s.ox$ox, reason: collision with other inner class name */
    public static class C0020ox extends RuntimeException {
        public C0020ox(String str, Throwable th) {
            super(str, th);
        }
    }

    private String d(Map<String, List<Pair<String, Long>>> map) {
        List<dq.ox> list;
        com.bykv.vk.openvk.preload.geckox.ig.dq dqVar = new com.bykv.vk.openvk.preload.geckox.ig.dq();
        com.bykv.vk.openvk.preload.geckox.p pVar = this.mn;
        Context context = pVar.dq;
        long longValue = pVar.ia.longValue();
        com.bykv.vk.openvk.preload.geckox.p pVar2 = this.mn;
        String str = pVar2.kk;
        String str2 = pVar2.o;
        String d2 = com.bykv.vk.openvk.preload.geckox.utils.d.d(context);
        String dq2 = com.bykv.vk.openvk.preload.geckox.utils.kk.dq(context);
        com.bykv.vk.openvk.preload.geckox.p pVar3 = this.mn;
        dqVar.dq(new com.bykv.vk.openvk.preload.geckox.ig.d(longValue, str, str2, d2, dq2, pVar3.mp, pVar3.ig));
        HashMap hashMap = new HashMap();
        for (Map.Entry<String, List<Pair<String, Long>>> entry : map.entrySet()) {
            HashMap hashMap2 = new HashMap();
            for (Pair<String, Long> pair : entry.getValue()) {
                dq.d dVar = new dq.d();
                dVar.dq = (Long) pair.second;
                hashMap2.put(pair.first, dVar);
            }
            hashMap.put(entry.getKey(), hashMap2);
        }
        try {
            com.bykv.vk.openvk.preload.dq.iw iwVar = com.bykv.vk.openvk.preload.geckox.p.d.dq().dq;
            this.ig.dq = iwVar.dq(hashMap);
            dqVar.d(hashMap);
            HashMap hashMap3 = new HashMap();
            for (String str3 : this.mn.s) {
                dq.C0017dq c0017dq = new dq.C0017dq();
                c0017dq.f649d = this.no;
                Map<String, List<dq.ox>> map2 = this.kk;
                if (map2 != null && !map2.isEmpty() && (list = this.kk.get(str3)) != null && !list.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    c0017dq.dq = arrayList;
                    arrayList.addAll(list);
                }
                hashMap3.put(str3, c0017dq);
            }
            this.ig.f680d = iwVar.dq(hashMap3);
            dqVar.dq(hashMap3);
            Map<String, Map<String, Object>> map3 = this.ia;
            if (map3 != null) {
                this.ig.ox = iwVar.dq(map3);
                dqVar.ox(this.ia);
            }
            return iwVar.dq(dqVar);
        } catch (Throwable unused) {
            return "";
        }
    }

    private static void d(List<Pair<String, com.bykv.vk.openvk.preload.geckox.mn.dq>> list) {
        if (list == null) {
            return;
        }
        Iterator<Pair<String, com.bykv.vk.openvk.preload.geckox.mn.dq>> it = list.iterator();
        while (it.hasNext()) {
            try {
                ((com.bykv.vk.openvk.preload.geckox.mn.dq) it.next().second).dq();
            } catch (Exception e2) {
                com.bykv.vk.openvk.preload.geckox.no.d.d("gecko-debug-tag", "releaseLock:", e2);
            }
        }
    }

    private static long dq(List<Pair<String, Long>> list, String str) {
        for (Pair<String, Long> pair : list) {
            if (((String) pair.first).equals(str)) {
                return ((Long) pair.second).longValue();
            }
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.d.p
    public Object dq(com.bykv.vk.openvk.preload.d.d<List<com.bykv.vk.openvk.preload.geckox.ig.s>> dVar, Map<String, List<Pair<String, Long>>> map) throws Throwable {
        List<Pair<String, com.bykv.vk.openvk.preload.geckox.mn.dq>> list;
        char c2 = 2;
        char c3 = 0;
        char c4 = 1;
        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "start get server channel version[v3]... local channel version:", map);
        Map<String, List<com.bykv.vk.openvk.preload.geckox.ig.s>> dq2 = dq(map);
        com.bykv.vk.openvk.preload.geckox.q.p.dq(this.mn, this.ig);
        Iterator<Map.Entry<String, List<com.bykv.vk.openvk.preload.geckox.ig.s>>> it = dq2.entrySet().iterator();
        while (it.hasNext()) {
            Iterator<com.bykv.vk.openvk.preload.geckox.ig.s> it2 = it.next().getValue().iterator();
            while (it2.hasNext()) {
                com.bykv.vk.openvk.preload.geckox.ig.s next = it2.next();
                long ox = next.ox();
                long p = next.p();
                if (p < ox) {
                    String s = next.s();
                    Long valueOf = Long.valueOf(ox);
                    Long valueOf2 = Long.valueOf(p);
                    Object[] objArr = new Object[5];
                    objArr[c3] = s;
                    objArr[c4] = "rollback：";
                    objArr[c2] = valueOf;
                    objArr[3] = "->";
                    objArr[4] = valueOf2;
                    com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", objArr);
                    File[] listFiles = new File(this.mn.q, next.dq() + File.separator + next.s()).listFiles(new FileFilter() { // from class: com.bykv.vk.openvk.preload.geckox.s.ox.1
                        @Override // java.io.FileFilter
                        public final boolean accept(File file) {
                            return file.isDirectory();
                        }
                    });
                    if (listFiles == null || listFiles.length == 0) {
                        c2 = 2;
                        c3 = 0;
                        c4 = 1;
                    } else {
                        int length = listFiles.length;
                        int i = 0;
                        while (i < length) {
                            File file = listFiles[i];
                            try {
                                long parseLong = Long.parseLong(file.getName());
                                if (parseLong > p) {
                                    final File file2 = new File(file.getParent(), file.getName() + "--pending-delete");
                                    file.renameTo(file2);
                                    com.bykv.vk.openvk.preload.geckox.utils.iw.dq().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.s.ox.2
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            com.bykv.vk.openvk.preload.geckox.utils.p.dq(file2);
                                        }
                                    });
                                } else if (parseLong == p) {
                                    it2.remove();
                                }
                            } catch (Exception unused) {
                            }
                            i++;
                            c2 = 2;
                            c3 = 0;
                            c4 = 1;
                        }
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, List<com.bykv.vk.openvk.preload.geckox.ig.s>>> it3 = dq2.entrySet().iterator();
        while (it3.hasNext()) {
            arrayList.addAll(it3.next().getValue());
        }
        Object obj = null;
        try {
            list = ox(arrayList);
            try {
                obj = dVar.dq((com.bykv.vk.openvk.preload.d.d<List<com.bykv.vk.openvk.preload.geckox.ig.s>>) arrayList);
                d(list);
                com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "all channel update finished");
            } catch (Throwable th) {
                th = th;
                try {
                    com.bykv.vk.openvk.preload.geckox.no.d.d("gecko-debug-tag", "filterChannel:", th);
                    d(list);
                    com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "all channel update finished");
                    dq(arrayList);
                    return obj;
                } catch (Throwable th2) {
                    d(list);
                    com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "all channel update finished");
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            list = null;
        }
        dq(arrayList);
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Map<String, List<com.bykv.vk.openvk.preload.geckox.ig.s>> dq(Map<String, List<Pair<String, Long>>> map) throws Exception {
        Object dq2;
        String d2 = d(map);
        String ad = awf.ad(new StringBuilder("https://"), this.mn.no, "/gecko/server/v3/package");
        try {
            this.ig.iw = com.bykv.vk.openvk.preload.geckox.utils.kk.dq(this.mn.dq);
            com.bykv.vk.openvk.preload.geckox.mp.d dq3 = this.mn.p.dq(ad, d2);
            com.bykv.vk.openvk.preload.geckox.q.dq.ox oxVar = this.ig;
            oxVar.mn = dq3.ox;
            oxVar.p = dq3.p;
            Map<String, String> map2 = dq3.dq;
            String str = "";
            if (map2 != null && !map2.isEmpty()) {
                String str2 = map2.get("x-tt-logid");
                if (TextUtils.isEmpty(str2)) {
                    str2 = map2.get("X-Tt-Logid");
                    if (TextUtils.isEmpty(str2)) {
                        String str3 = map2.get("X-TT-LOGID");
                        if (!TextUtils.isEmpty(str3)) {
                            str = str3;
                        }
                    }
                }
                str = str2;
            }
            oxVar.s = str;
            if (dq3.ox != 200) {
                throw new NetworkErrorException("net work get failed, code: " + dq3.ox + ", url:" + ad);
            }
            String str4 = dq3.f661d;
            com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "response:", str4);
            try {
                Type type = new com.bykv.vk.openvk.preload.dq.ox.dq<com.bykv.vk.openvk.preload.geckox.ig.p<com.bykv.vk.openvk.preload.geckox.ig.ox>>() { // from class: com.bykv.vk.openvk.preload.geckox.s.ox.3
                }.f632d;
                com.bykv.vk.openvk.preload.dq.iw iwVar = com.bykv.vk.openvk.preload.geckox.p.d.dq().dq;
                if (str4 == null) {
                    dq2 = null;
                } else {
                    com.bykv.vk.openvk.preload.dq.p.dq dqVar = new com.bykv.vk.openvk.preload.dq.p.dq(new StringReader(str4));
                    dqVar.dq = iwVar.o;
                    dq2 = iwVar.dq(dqVar, type);
                    com.bykv.vk.openvk.preload.dq.iw.dq(dq2, dqVar);
                }
                com.bykv.vk.openvk.preload.geckox.ig.p pVar = (com.bykv.vk.openvk.preload.geckox.ig.p) dq2;
                int i = pVar.dq;
                if (i != 0) {
                    if (i == 2000) {
                        com.bykv.vk.openvk.preload.geckox.dq.dq.dq(this.mn);
                        return new HashMap();
                    }
                    String str5 = "check update error，unknow status code，response.status：" + pVar.dq;
                    com.bykv.vk.openvk.preload.geckox.q.dq.ox oxVar2 = this.ig;
                    oxVar2.p = str5;
                    com.bykv.vk.openvk.preload.geckox.q.p.dq(this.mn, oxVar2);
                    throw new dq(str5);
                }
                T t = pVar.f652d;
                if (t == 0) {
                    com.bykv.vk.openvk.preload.geckox.q.dq.ox oxVar3 = this.ig;
                    oxVar3.p = "check update error：response.data==null";
                    com.bykv.vk.openvk.preload.geckox.q.p.dq(this.mn, oxVar3);
                    throw new dq("check update error：response.data==null");
                }
                com.bykv.vk.openvk.preload.geckox.dq.dq.dq(this.mn.dq, ((com.bykv.vk.openvk.preload.geckox.ig.ox) t).d(), this.mn.q, this.o);
                Map<String, List<com.bykv.vk.openvk.preload.geckox.ig.s>> dq4 = ((com.bykv.vk.openvk.preload.geckox.ig.ox) pVar.f652d).dq();
                if (dq4 == null || dq4.isEmpty()) {
                    com.bykv.vk.openvk.preload.geckox.dq.dq.dq(this.mn);
                    return new HashMap();
                }
                for (String str6 : this.mn.s) {
                    List<com.bykv.vk.openvk.preload.geckox.ig.s> list = dq4.get(str6);
                    if (list != null && !list.isEmpty()) {
                        for (com.bykv.vk.openvk.preload.geckox.ig.s sVar : list) {
                            sVar.dq(str6);
                            sVar.dq(dq(map.get(str6), sVar.s()));
                        }
                    }
                }
                return dq4;
            } catch (Throwable th) {
                this.ig.p = "json parse failed：" + th.getMessage();
                com.bykv.vk.openvk.preload.geckox.q.p.dq(this.mn, this.ig);
                StringBuilder p = awf.p("json parse failed：", str4, " caused by:");
                p.append(th.getMessage());
                throw new d(p.toString(), th);
            }
        } catch (Exception e2) {
            com.bykv.vk.openvk.preload.geckox.q.p.dq(this.mn, this.ig);
            StringBuilder p2 = awf.p("request failed：url:", ad, ", caused by:");
            p2.append(e2.getMessage());
            throw new C0020ox(p2.toString(), e2);
        }
    }

    private void dq(List<com.bykv.vk.openvk.preload.geckox.ig.s> list) {
        if (list.isEmpty()) {
            return;
        }
        for (com.bykv.vk.openvk.preload.geckox.ig.s sVar : list) {
            com.bykv.vk.openvk.preload.geckox.dq.ox.dq(new File(new File(this.mn.q, sVar.dq()), sVar.s()).getAbsolutePath());
        }
    }

    private List<Pair<String, com.bykv.vk.openvk.preload.geckox.mn.dq>> ox(List<com.bykv.vk.openvk.preload.geckox.ig.s> list) {
        if (list.isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (com.bykv.vk.openvk.preload.geckox.ig.s sVar : list) {
            try {
                File file = new File(new File(this.mn.q, sVar.dq()), sVar.s());
                if (file.isFile()) {
                    com.bykv.vk.openvk.preload.geckox.utils.p.dq(file);
                }
                if (!file.mkdirs() && !file.isDirectory()) {
                    com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "can not create channel dir：", file.getAbsolutePath());
                    throw new RuntimeException("can not create channel dir:" + file.getAbsolutePath());
                }
                com.bykv.vk.openvk.preload.geckox.mn.dq dq2 = com.bykv.vk.openvk.preload.geckox.mn.dq.dq(file.getAbsolutePath() + File.separator + "update.lock");
                if (dq2 != null) {
                    arrayList.add(new Pair(sVar.s(), dq2));
                    arrayList2.add(sVar);
                }
            } catch (Exception e2) {
                com.bykv.vk.openvk.preload.geckox.no.d.d("gecko-debug-tag", "filterChannel:", e2);
                String s = sVar.s();
                com.bykv.vk.openvk.preload.geckox.o.dq dqVar = this.o;
                if (dqVar != null) {
                    try {
                        dqVar.dq(s, e2);
                    } catch (Throwable th) {
                        com.bykv.vk.openvk.preload.geckox.no.d.dq("gecko-debug-tag", "onUpdateFailed:", th);
                    }
                }
            }
        }
        list.clear();
        list.addAll(arrayList2);
        return arrayList;
    }

    @Override // com.bykv.vk.openvk.preload.d.p
    public final void dq(Object... objArr) {
        super.dq(objArr);
        this.mn = (com.bykv.vk.openvk.preload.geckox.p) objArr[0];
        this.ia = (Map) objArr[1];
        this.kk = (Map) objArr[2];
        this.o = (com.bykv.vk.openvk.preload.geckox.o.dq) objArr[3];
        this.no = (String) objArr[4];
    }
}
