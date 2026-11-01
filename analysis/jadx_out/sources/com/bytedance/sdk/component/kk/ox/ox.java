package com.bytedance.sdk.component.kk.ox;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.util.Map;

/* loaded from: classes.dex */
public class ox {
    public boolean dq = false;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1994d = true;
    public Map<String, Integer> ox = null;
    public Map<String, String> p = null;
    public int s = 10;
    public int iw = 1;
    public int mn = 1;
    public int ia = 10;
    public int kk = 1;
    public int o = 1;
    public int no = AVMDLDataLoader.KeyIsMaxIpCountEachDomain;
    public int ig = 120;
    public String mp = null;
    public int q = 0;
    public long jy = 0;

    public String toString() {
        StringBuilder sb = new StringBuilder(" localEnable: ");
        sb.append(this.dq);
        sb.append(" probeEnable: ");
        sb.append(this.f1994d);
        sb.append(" hostFilter: ");
        Map<String, Integer> map = this.ox;
        sb.append(map != null ? map.size() : 0);
        sb.append(" hostMap: ");
        Map<String, String> map2 = this.p;
        sb.append(map2 != null ? map2.size() : 0);
        sb.append(" reqTo: ");
        sb.append(this.s);
        sb.append("#");
        sb.append(this.iw);
        sb.append("#");
        sb.append(this.mn);
        sb.append(" reqErr: ");
        sb.append(this.ia);
        sb.append("#");
        sb.append(this.kk);
        sb.append("#");
        sb.append(this.o);
        sb.append(" updateInterval: ");
        sb.append(this.no);
        sb.append(" updateRandom: ");
        sb.append(this.ig);
        sb.append(" httpBlack: ");
        sb.append(this.mp);
        return sb.toString();
    }
}
