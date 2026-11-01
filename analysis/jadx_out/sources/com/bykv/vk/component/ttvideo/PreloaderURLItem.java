package com.bykv.vk.component.ttvideo;

/* loaded from: classes.dex */
public class PreloaderURLItem {

    /* renamed from: a, reason: collision with root package name */
    private String f448a;

    /* renamed from: b, reason: collision with root package name */
    private String f449b;

    /* renamed from: c, reason: collision with root package name */
    private final String f450c;

    /* renamed from: d, reason: collision with root package name */
    private final long f451d;

    /* renamed from: e, reason: collision with root package name */
    private String[] f452e;

    /* renamed from: f, reason: collision with root package name */
    private IPreLoaderItemCallBackListener f453f;

    public PreloaderURLItem(String str, String str2, long j, String[] strArr) {
        this.f449b = null;
        this.f453f = null;
        this.f448a = str;
        this.f450c = str2;
        this.f451d = j;
        this.f452e = strArr;
    }

    public PreloaderURLItem(String str, String str2, long j, String[] strArr, String str3) {
        this.f453f = null;
        this.f448a = str;
        this.f449b = str3;
        this.f450c = str2;
        this.f451d = j;
        this.f452e = strArr;
    }

    public IPreLoaderItemCallBackListener getCallBackListener() {
        return this.f453f;
    }

    public String getFilePath() {
        return this.f449b;
    }

    public String getKey() {
        return this.f448a;
    }

    public long getPreloadSize() {
        return this.f451d;
    }

    public String[] getUrls() {
        return this.f452e;
    }

    public String getVideoId() {
        return this.f450c;
    }

    public void setCallBackListener(IPreLoaderItemCallBackListener iPreLoaderItemCallBackListener) {
        this.f453f = iPreLoaderItemCallBackListener;
    }

    public void setKey(String str) {
        this.f448a = str;
    }
}
