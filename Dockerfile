#FROM arm32v7/debian:stretch-slim
FROM debian:stretch-slim

ENV NAMESERVER_1=
ENV NAMESERVER_2=
ENV NAMESERVER_3=
ENV NAMESERVER_4=
ENV NAMESERVER_5=
ENV NAMESERVER_6=
ENV NAMESERVER_7=
ENV NAMESERVER_8=
ENV NAMESERVER_9=
ENV NAMESERVER_10=
# ENV NAMESERVER_11=
# ENV NAMESERVER_12=
# ENV NAMESERVER_13=
# ENV NAMESERVER_14=
# ENV NAMESERVER_15=
# ENV NAMESERVER_16=
# ENV NAMESERVER_17=
# ENV NAMESERVER_18=
# ENV NAMESERVER_19=
# ENV NAMESERVER_20=

ENV HOST_1_FQDN=
ENV HOST_1_IP=
ENV HOST_1_NAME=
ENV HOST_2_FQDN=
ENV HOST_2_IP=
ENV HOST_2_NAME=
ENV HOST_3_FQDN=
ENV HOST_3_IP=
ENV HOST_3_NAME=
ENV HOST_4_FQDN=
ENV HOST_4_IP=
ENV HOST_4_NAME=
ENV HOST_5_FQDN=
ENV HOST_5_IP=
ENV HOST_5_NAME=
ENV HOST_6_FQDN=
ENV HOST_6_IP=
ENV HOST_6_NAME=
ENV HOST_7_FQDN=
ENV HOST_7_IP=
ENV HOST_7_NAME=
ENV HOST_8_FQDN=
ENV HOST_8_IP=
ENV HOST_8_NAME=
ENV HOST_9_FQDN=
ENV HOST_9_IP=
ENV HOST_9_NAME=
ENV HOST_10_FQDN=
ENV HOST_10_IP=
ENV HOST_10_NAME=
# ENV HOST_11_FQDN=
# ENV HOST_11_IP=
# ENV HOST_11_NAME=
# ENV HOST_12_FQDN=
# ENV HOST_12_IP=
# ENV HOST_12_NAME=
# ENV HOST_13_FQDN=
# ENV HOST_13_IP=
# ENV HOST_13_NAME=
# ENV HOST_14_FQDN=
# ENV HOST_14_IP=
# ENV HOST_14_NAME=
# ENV HOST_15_FQDN=
# ENV HOST_15_IP=
# ENV HOST_15_NAME=
# ENV HOST_16_FQDN=
# ENV HOST_16_IP=
# ENV HOST_16_NAME=
# ENV HOST_17_FQDN=
# ENV HOST_17_IP=
# ENV HOST_17_NAME=
# ENV HOST_18_FQDN=
# ENV HOST_18_IP=
# ENV HOST_18_NAME=
# ENV HOST_19_FQDN=
# ENV HOST_19_IP=
# ENV HOST_19_NAME=
# ENV HOST_20_FQDN=
# ENV HOST_20_IP=
# ENV HOST_20_NAME=
# ENV HOST_21_FQDN=
# ENV HOST_21_IP=
# ENV HOST_21_NAME=
# ENV HOST_22_FQDN=
# ENV HOST_22_IP=
# ENV HOST_22_NAME=
# ENV HOST_23_FQDN=
# ENV HOST_23_IP=
# ENV HOST_23_NAME=
# ENV HOST_24_FQDN=
# ENV HOST_24_IP=
# ENV HOST_24_NAME=
# ENV HOST_25_FQDN=
# ENV HOST_25_IP=
# ENV HOST_25_NAME=
# ENV HOST_26_FQDN=
# ENV HOST_26_IP=
# ENV HOST_26_NAME=
# ENV HOST_27_FQDN=
# ENV HOST_27_IP=
# ENV HOST_27_NAME=
# ENV HOST_28_FQDN=
# ENV HOST_28_IP=
# ENV HOST_28_NAME=
# ENV HOST_29_FQDN=
# ENV HOST_29_IP=
# ENV HOST_29_NAME=
# ENV HOST_30_FQDN=
# ENV HOST_30_IP=
# ENV HOST_30_NAME=
# ENV HOST_31_FQDN=
# ENV HOST_31_IP=
# ENV HOST_31_NAME=
# ENV HOST_32_FQDN=
# ENV HOST_32_IP=
# ENV HOST_32_NAME=
# ENV HOST_33_FQDN=
# ENV HOST_33_IP=
# ENV HOST_33_NAME=
# ENV HOST_34_FQDN=
# ENV HOST_34_IP=
# ENV HOST_34_NAME=
# ENV HOST_35_FQDN=
# ENV HOST_35_IP=
# ENV HOST_35_NAME=
# ENV HOST_36_FQDN=
# ENV HOST_36_IP=
# ENV HOST_36_NAME=
# ENV HOST_37_FQDN=
# ENV HOST_37_IP=
# ENV HOST_37_NAME=
# ENV HOST_38_FQDN=
# ENV HOST_38_IP=
# ENV HOST_38_NAME=
# ENV HOST_39_FQDN=
# ENV HOST_39_IP=
# ENV HOST_39_NAME=
# ENV HOST_40_FQDN=
# ENV HOST_40_IP=
# ENV HOST_40_NAME=
# ENV HOST_41_FQDN=
# ENV HOST_41_IP=
# ENV HOST_41_NAME=
# ENV HOST_42_FQDN=
# ENV HOST_42_IP=
# ENV HOST_42_NAME=
# ENV HOST_43_FQDN=
# ENV HOST_43_IP=
# ENV HOST_43_NAME=
# ENV HOST_44_FQDN=
# ENV HOST_44_IP=
# ENV HOST_44_NAME=
# ENV HOST_45_FQDN=
# ENV HOST_45_IP=
# ENV HOST_45_NAME=
# ENV HOST_46_FQDN=
# ENV HOST_46_IP=
# ENV HOST_46_NAME=
# ENV HOST_47_FQDN=
# ENV HOST_47_IP=
# ENV HOST_47_NAME=
# ENV HOST_48_FQDN=
# ENV HOST_48_IP=
# ENV HOST_48_NAME=
# ENV HOST_49_FQDN=
# ENV HOST_49_IP=
# ENV HOST_49_NAME=
# ENV HOST_50_FQDN=
# ENV HOST_50_IP=
# ENV HOST_50_NAME=
# ENV HOST_51_FQDN=
# ENV HOST_51_IP=
# ENV HOST_51_NAME=
# ENV HOST_52_FQDN=
# ENV HOST_52_IP=
# ENV HOST_52_NAME=
# ENV HOST_53_FQDN=
# ENV HOST_53_IP=
# ENV HOST_53_NAME=
# ENV HOST_54_FQDN=
# ENV HOST_54_IP=
# ENV HOST_54_NAME=
# ENV HOST_55_FQDN=
# ENV HOST_55_IP=
# ENV HOST_55_NAME=
# ENV HOST_56_FQDN=
# ENV HOST_56_IP=
# ENV HOST_56_NAME=
# ENV HOST_57_FQDN=
# ENV HOST_57_IP=
# ENV HOST_57_NAME=
# ENV HOST_58_FQDN=
# ENV HOST_58_IP=
# ENV HOST_58_NAME=
# ENV HOST_59_FQDN=
# ENV HOST_59_IP=
# ENV HOST_59_NAME=

RUN apt-get update && apt-get install -y dnsmasq

COPY ./run_hook.sh run_hook.sh
EXPOSE 53 53/udp
ENTRYPOINT ["./run_hook.sh"]
#RUN run_hook.sh
#
#ENTRYPOINT ["dnsmasq", "-k"]