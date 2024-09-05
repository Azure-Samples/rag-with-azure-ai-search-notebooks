# Azure AI Search Demos

This repository contains many notebooks that explain how Azure AI Search works, including several showcasing how vector search works.

## Environment setup

1. Run `azd up` on [azure-search-openai-demo](https://github.com/Azure-Samples/azure-search-openai-demo/) with GPT-4-vision enabled. This will create the necessary resources for the Azure OpenAI, Azure AI Search services, and the Computer Vision service.

2. Create a .env with these variables, and the values taken from `.azure/ENV-NAME/.env`

    ```shell
    AZURE_OPENAI_SERVICE=YOUR-SERVICE-NAME
    AZURE_OPENAI_DEPLOYMENT_NAME=YOUR-OPENAI-DEPLOYMENT-NAME
    AZURE_OPENAI_ADA_DEPLOYMENT=YOUR-EMBED-DEPLOYMENT-NAME
    AZURE_SEARCH_SERVICE=YOUR-SEARCH-SERVICE-NAME
    AZURE_COMPUTERVISION_SERVICE=YOUR-COMPUTERVISION-SERVICE-NAME
    ```

3. Login to your Azure account using either the Azure CLI or the Azure Developer CLI:

    ```shell
    azd auth login
    ```

4. If you deployed your resource group to a tenant other than your home tenant, set the tenant ID:

    ```shell
    export TENANT_ID=YOUR-TENANT-ID
    ```

5. Create a Python virtual environment or open the project in a container.

6. Install the requirements:

    ```shell
    pip install -r requirements.txt
    ```

## Notebooks

These are the available notebooks, in suggested order:

* [Vector Embeddings Notebook](./vector_embeddings.ipynb)
* [Azure AI Search Notebook](./azure_ai_search.ipynb)
* [Image Search Notebook](./image_search.ipynb)
* [Azure AI Search Relevance Notebook](./search_relevance.ipynb)
* [RAG with Azure AI Search](./rag.ipynb)
* [RAG Evaluation](./rag_eval.ipynb)

You can find video recordings going through the notebooks [here](https://github.com/microsoft/aitour-rag-with-ai-search/tree/main/session-delivery-resources#video-recordings).
