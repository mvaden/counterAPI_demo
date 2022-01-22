<script>
	let data = {
		loading: false
	} 
	
	async function getHits() {
		data.loading = true;
		let response = await fetch('https://api.countapi.xyz/hit/1ccb732e-b55a-4404-ad3f-0f99c02fe44e');
		let hits = await response.json();
		data = {
			loading: false
		}
	}
</script>

<main>
	<div>
		<button on:click={getHits}>Update hits</button>
		<div>
			<span>Hits: </span>
			
			{#if data.loading === true}
			<span>Getting hits...</span>
			{/if}
		<div>
	</div>
</main>

<style>

</style>