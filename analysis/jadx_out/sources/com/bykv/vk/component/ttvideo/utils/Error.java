package com.bykv.vk.component.ttvideo.utils;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class Error {
    public static final int AUDIO_HARDWARE_DECODER_WRITE_ERROR = -499978;
    public static final int BUFFERING_TIME_OUT_ERROR = -499982;
    public static final String DataLoaderPreload = "kTTVideoErrorDomainDataLoaderPreload";
    public static final int ERROR_TYPE_CDN = 1003;
    public static final int ERROR_TYPE_PLAYER = 1002;
    public static final int OPEN_TIME_OUT_ERROR = -1414092869;
    public static final int PlayerStateIllegal = -9992;
    public static final int PreloadInvalidParameter = -100001;
    public static final int PreloadMDLStateError = -100002;
    public static final int PreloadSameKeyError = -100003;
    public static final int PreloadTrackEmptyError = -100004;
    public static final int TCP_READ_NETWORK_TIMEOUT = -499793;
    public static final int VIDEO_HARDWARE_DECODER_WRITE_ERROR = -499977;
    public static final String VideoOSPlayer = "kTTVideoErrorDomainVideoOSPlayer";
    public static final String VideoOwnPlayer = "kTTVideoErrorDomainVideoOwnPlayer";

    /* renamed from: a, reason: collision with root package name */
    public int f497a;

    /* renamed from: b, reason: collision with root package name */
    public int f498b;

    /* renamed from: c, reason: collision with root package name */
    public String f499c;

    /* renamed from: d, reason: collision with root package name */
    public String f500d;

    /* renamed from: e, reason: collision with root package name */
    public Map f501e;

    public Error(String str, int i) {
        this(str, i, 0);
    }

    public Error(String str, int i, int i2) {
        this(str, i, i2, null);
    }

    public Error(String str, int i, int i2, String str2) {
        this.f499c = str;
        this.f497a = i;
        this.f498b = i2;
        this.f500d = str2;
        this.f501e = new HashMap();
    }

    public Error(String str, int i, String str2) {
        this(str, i, 0, str2);
    }

    public int getCode() {
        return this.f497a;
    }

    public String getDescription() {
        return this.f500d;
    }

    public String getDomain() {
        return this.f499c;
    }

    public int getInternalCode() {
        return this.f498b;
    }

    public Map getParameters() {
        return this.f501e;
    }

    public int getType() {
        return (this.f499c.equals(VideoOwnPlayer) && needRestartPlayer()) ? 1002 : 1003;
    }

    public boolean needFallbackOS() {
        int i = this.f497a;
        return i == -499978 || i == -499977;
    }

    public boolean needRestartPlayer() {
        int i = this.f497a;
        return i == -499999 || i == -499997 || i == -499996 || i == -499992 || i == -499991 || i == -499990 || i == -499989 || i == -2139062143;
    }

    public boolean notNeedRetry() {
        int i = this.f497a;
        return i == -499982 || i == -499793 || i == -1414092869;
    }

    public String toString() {
        String str = this.f499c;
        Integer valueOf = Integer.valueOf(this.f497a);
        Integer valueOf2 = Integer.valueOf(this.f498b);
        String str2 = this.f500d;
        if (str2 == null) {
            str2 = "";
        }
        return String.format("domain:%s, code:%d, internalCode:%d, description:%s", str, valueOf, valueOf2, str2);
    }
}
