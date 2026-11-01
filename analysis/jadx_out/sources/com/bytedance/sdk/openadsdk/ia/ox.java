package com.bytedance.sdk.openadsdk.ia;

import com.bytedance.sdk.component.iw.kk;
import com.bytedance.sdk.component.iw.r;
import com.bytedance.sdk.openadsdk.ats.ATSMethod;

/* loaded from: classes3.dex */
public class ox implements r {
    private static int dq;

    /* renamed from: d, reason: collision with root package name */
    private long f3763d = 0;
    private long ox;
    private boolean p;
    private String s;

    public ox() {
        dq++;
        this.s = "image_request_" + dq;
    }

    private String ox(String str, kk kkVar) {
        com.bytedance.sdk.component.iw.ox.dq gh;
        if (str == null) {
            return str;
        }
        switch (str) {
            case "success":
                return "成功";
            case "raw_cache":
                return "查询RAW内存缓存";
            case "image_type":
                return "判断图片类型：";
            case "disk_cache":
                return "查询文件缓存";
            case "decode":
                return "解码";
            case "failed":
                if (!(kkVar instanceof com.bytedance.sdk.component.iw.ox.ox) || (gh = ((com.bytedance.sdk.component.iw.ox.ox) kkVar).gh()) == null) {
                    return "失败";
                }
                Throwable ox = gh.ox();
                StringBuilder sb = new StringBuilder("失败：code:");
                sb.append(gh.dq());
                sb.append(", msg:");
                sb.append(gh.d());
                sb.append(", exception:");
                sb.append(ox != null ? ox.getMessage() : "null \r\n");
                return sb.toString();
            case "check_duplicate":
                return "检查重复请求";
            case "memory_cache":
                return "查询Bitmap内存缓存";
            case "net_request":
                return "请求网络";
            case "generate_key":
                return "生成KEY:" + kkVar.mn();
            case "cache_policy":
                return "查询缓存策略";
            default:
                return str;
        }
    }

    @Override // com.bytedance.sdk.component.iw.r
    @ATSMethod(2)
    public void d(String str, kk kkVar) {
        this.ox += System.currentTimeMillis() - this.f3763d;
        ox(str, kkVar);
    }

    @Override // com.bytedance.sdk.component.iw.r
    @ATSMethod(1)
    public void dq(String str, kk kkVar) {
        if (!this.p) {
            kkVar.d();
            kkVar.ox();
            kkVar.p();
            this.p = true;
        }
        this.f3763d = System.currentTimeMillis();
        ox(str, kkVar);
    }
}
