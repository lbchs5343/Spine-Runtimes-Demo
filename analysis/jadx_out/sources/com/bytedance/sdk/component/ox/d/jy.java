package com.bytedance.sdk.component.ox.d;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public interface jy {
    public static final jy dq = new jy() { // from class: com.bytedance.sdk.component.ox.d.jy.1
        @Override // com.bytedance.sdk.component.ox.d.jy
        public List<InetAddress> dq(String str) throws UnknownHostException {
            if (str == null) {
                throw new UnknownHostException("hostname == null");
            }
            try {
                return Arrays.asList(InetAddress.getAllByName(str));
            } catch (Throwable unused) {
                return new ArrayList();
            }
        }
    };

    List<InetAddress> dq(String str) throws UnknownHostException;
}
