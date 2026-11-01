package com.bykv.vk.openvk.preload.geckox.dq;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.os.SystemClock;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bykv.vk.openvk.preload.geckox.ig.ox;
import com.bykv.vk.openvk.preload.geckox.utils.iw;
import com.bykv.vk.openvk.preload.geckox.utils.kk;
import com.bykv.vk.openvk.preload.geckox.utils.no;
import com.bykv.vk.openvk.preload.geckox.utils.p;
import g.awf;
import java.io.File;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class dq {

    /* renamed from: com.bykv.vk.openvk.preload.geckox.dq.dq$dq, reason: collision with other inner class name */
    public static class C0015dq {

        /* renamed from: d, reason: collision with root package name */
        String f639d;
        String dq;
        int ox;
        long p;
        File s;

        public C0015dq(String str, String str2, int i, long j, File file) {
            this.dq = str;
            this.f639d = str2;
            this.ox = i;
            this.p = j;
            this.s = file;
        }
    }

    public static void dq(final Context context, Map<String, ox.d> map, File file, final com.bykv.vk.openvk.preload.geckox.o.dq dqVar) {
        final ArrayList arrayList;
        ox.d value;
        List<ox.dq> list;
        List<Long> d2;
        List<Long> d3;
        if (map == null || map.isEmpty()) {
            return;
        }
        try {
            arrayList = new ArrayList();
            for (Map.Entry<String, ox.d> entry : map.entrySet()) {
                String key = entry.getKey();
                File file2 = new File(file, key);
                if (file2.isDirectory() && (value = entry.getValue()) != null && (list = value.dq) != null && !list.isEmpty()) {
                    List<ox.dq> list2 = value.dq;
                    HashSet hashSet = new HashSet();
                    for (ox.dq dqVar2 : list2) {
                        String str = dqVar2.dq;
                        if (!hashSet.contains(str)) {
                            hashSet.add(str);
                            int i = dqVar2.f651d;
                            List<Long> list3 = dqVar2.ox;
                            File file3 = new File(file2, str);
                            if (i != 1) {
                                if (i != 2) {
                                    if (i == 3) {
                                        File file4 = new File(file2, str);
                                        File file5 = new File(file2, str + "--pending-delete");
                                        file4.renameTo(file5);
                                        arrayList.add(new C0015dq(key, str, i, 0L, file5));
                                    }
                                } else if (list3 != null && (d2 = no.d(file3)) != null && !d2.isEmpty()) {
                                    for (Long l : d2) {
                                        if (list3.get(0).longValue() > l.longValue()) {
                                            File file6 = new File(file3, l + "--pending-delete");
                                            new File(file3, String.valueOf(l)).renameTo(file6);
                                            arrayList.add(new C0015dq(key, str, i, l.longValue(), file6));
                                        }
                                    }
                                }
                            } else if (list3 != null && (d3 = no.d(file3)) != null && !d3.isEmpty()) {
                                for (Long l2 : d3) {
                                    if (list3.contains(l2)) {
                                        File file7 = new File(file3, l2 + "--pending-delete");
                                        new File(file3, String.valueOf(l2)).renameTo(file7);
                                        arrayList.add(new C0015dq(key, str, i, l2.longValue(), file7));
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            arrayList = null;
        }
        if (arrayList == null) {
            return;
        }
        iw.dq().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.dq.dq.1
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    Context context2 = context;
                    List<C0015dq> list4 = arrayList;
                    if (list4 != null && !list4.isEmpty()) {
                        for (C0015dq c0015dq : list4) {
                            File file8 = c0015dq.s;
                            long uptimeMillis = SystemClock.uptimeMillis();
                            boolean dq = p.dq(file8);
                            long uptimeMillis2 = SystemClock.uptimeMillis();
                            if (dq) {
                                d.dq(context2).dq(c0015dq.dq, c0015dq.f639d, c0015dq.ox, 200, c0015dq.p, 0, null, uptimeMillis2 - uptimeMillis);
                            } else {
                                d.dq(context2).dq(c0015dq.dq, c0015dq.f639d, c0015dq.ox, MediaPlayer.MEDIA_PLAYER_OPTION_DISABLE_SHORT_SEEK, c0015dq.p, MediaPlayer.MEDIA_PLAYER_OPTION_ABR_DOWNLOAD_VIDEO_BITRATE, "delete failed", uptimeMillis2 - uptimeMillis);
                            }
                        }
                    }
                } catch (Exception e3) {
                    com.bykv.vk.openvk.preload.geckox.no.d.dq("clean-channel", "", e3);
                }
            }
        });
    }

    public static void dq(com.bykv.vk.openvk.preload.geckox.p pVar) {
        if (pVar.jy) {
            com.bykv.vk.openvk.preload.geckox.ig.d dVar = new com.bykv.vk.openvk.preload.geckox.ig.d(pVar.ia.longValue(), pVar.kk, pVar.o, com.bykv.vk.openvk.preload.geckox.utils.d.d(pVar.dq), kk.dq(pVar.dq), pVar.mp, pVar.ig);
            com.bykv.vk.openvk.preload.geckox.q.dq.dq dqVar = new com.bykv.vk.openvk.preload.geckox.q.dq.dq();
            dqVar.dq = dVar;
            dqVar.f676d.addAll(d.dq(pVar.dq).dq());
            if (dqVar.f676d.isEmpty()) {
                return;
            }
            String ad = awf.ad(new StringBuilder("https://"), pVar.no, "/gecko/server/packages/stats");
            try {
                com.bykv.vk.openvk.preload.geckox.mp.d dq = pVar.p.dq(ad, com.bykv.vk.openvk.preload.geckox.p.d.dq().dq.dq(dqVar));
                if (dq.ox == 200) {
                    if (new JSONObject(dq.f661d).getInt("status") != 0) {
                        throw new RuntimeException("upload failed");
                    }
                } else {
                    throw new NetworkErrorException("net work get failed, code: " + dq.ox + ", url:" + ad);
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
        }
    }
}
