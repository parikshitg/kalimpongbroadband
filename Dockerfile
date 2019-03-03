FROM scratch
LABEL authors="Sangeet Kumar <sk@urantiatech.com>"
ADD kalimpongbroadband kalimpongbroadband
ADD static static
ADD views views
EXPOSE 8080
CMD ["/kalimpongbroadband"]
